import 'package:ell_ena/l10n/app_localizations.dart';
import 'package:ell_ena/shell/desktop_shell.dart';
import 'package:ell_ena/shell/shell_destination.dart';
import 'package:ell_ena/shell/widgets/shell_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<void> pumpShell(
    WidgetTester tester, {
    ShellDestination selected = ShellDestination.dashboard,
    ValueChanged<ShellDestination>? onDestinationSelected,
    Future<void> Function()? onRefresh,
    ShellPageAction? pageAction,
  }) async {
    tester.view.physicalSize = const Size(1440, 900);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: DesktopShell(
          selectedDestination: selected,
          onDestinationSelected: onDestinationSelected,
          onRefresh: onRefresh,
          pageAction: pageAction,
          child: const Text('page body'),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('sidebar lists tasks, tickets and meetings as pages',
      (tester) async {
    await pumpShell(tester);

    for (final label in [
      'Dashboard',
      'Calendar',
      'Tasks',
      'Tickets',
      'Meetings',
      'Chat',
    ]) {
      expect(find.text(label), findsWidgets, reason: label);
    }
    expect(find.text('Workspace'), findsNothing);
    expect(find.text('page body'), findsOneWidget);
  });

  testWidgets('no longer shows the placeholder account footer', (tester) async {
    await pumpShell(tester);

    expect(find.text('Account'), findsNothing);
    expect(find.text('Signed in'), findsNothing);
  });

  testWidgets('top bar titles the selected page', (tester) async {
    await pumpShell(tester, selected: ShellDestination.tickets);

    // Once in the sidebar, once as the top bar title.
    expect(find.text('Tickets'), findsNWidgets(2));
  });

  testWidgets('sidebar taps report the destination', (tester) async {
    ShellDestination? tapped;
    await pumpShell(tester, onDestinationSelected: (d) => tapped = d);

    await tester.tap(find.text('Meetings'));

    expect(tapped, ShellDestination.meetings);
  });

  testWidgets('refresh button runs the page refresh', (tester) async {
    var refreshes = 0;
    await pumpShell(tester, onRefresh: () async => refreshes++);

    await tester.tap(find.byTooltip('Refresh'));
    await tester.pumpAndSettle();

    expect(refreshes, 1);
  });

  testWidgets('refresh button is hidden when the page has nothing to refresh',
      (tester) async {
    await pumpShell(tester, selected: ShellDestination.chat);

    expect(find.byTooltip('Refresh'), findsNothing);
  });

  testWidgets('page action replaces the floating add button', (tester) async {
    var opened = 0;
    await pumpShell(
      tester,
      selected: ShellDestination.tasks,
      pageAction: ShellPageAction(
        label: 'New Task',
        icon: Icons.add,
        onPressed: () => opened++,
      ),
    );

    expect(find.byType(FloatingActionButton), findsNothing);
    await tester.tap(find.widgetWithText(FilledButton, 'New Task'));

    expect(opened, 1);
  });

  testWidgets('pages without an action show no action button', (tester) async {
    await pumpShell(tester, selected: ShellDestination.dashboard);

    expect(find.byType(FilledButton), findsNothing);
  });
}
