import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../l10n/app_localizations.dart';
import '../../providers/navigation/models/home_tab.dart';
import '../../providers/navigation_provider.dart';
import '../../shell/app_shell.dart';
import '../../shell/desktop_shell.dart';
import '../../shell/shell_destination.dart';
import '../calendar/calendar_screen.dart';
import '../chat/chat_screen.dart';
import '../profile/profile_screen.dart';
import '../workspace/workspace_screen.dart';
import 'dashboard_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  final Map<String, dynamic>? arguments;

  const HomeScreen({super.key, this.arguments});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  List<Widget> _screens = [];

  @override
  void initState() {
    super.initState();
    _initializeScreens();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _applyRouteArguments();
    });
  }

  void _initializeScreens() {
    _screens = [
      const DashboardScreen(),
      const CalendarScreen(),
      const WorkspaceScreen(),
      const ChatScreen(),
      const ProfileScreen(),
    ];
  }

  void _applyRouteArguments() {
    final args = widget.arguments;
    if (args == null) return;

    if (args.containsKey('screen') && args['screen'] is int) {
      ref.read(homeTabProvider.notifier).state =
          HomeTab.fromIndex(args['screen'] as int);
    }

    if (args.containsKey('initial_message') &&
        args['initial_message'] is String &&
        ref.read(homeTabProvider) == HomeTab.chat) {
      setState(() {
        _screens[HomeTab.chat.index] = ChatScreen(
          arguments: {'initial_message': args['initial_message']},
        );
      });
    }
  }

  void _selectTab(int index) {
    ref.read(homeTabProvider.notifier).state = HomeTab.fromIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final selectedTab = ref.watch(homeTabProvider);
    final selectedDestination = ShellDestination.values[selectedTab.index];
    final content = IndexedStack(
      index: selectedTab.index,
      children: _screens,
    );

    if (AppShell.isDesktop(context)) {
      return DesktopShell(
        selectedDestination: selectedDestination,
        onDestinationSelected: (destination) => _selectTab(destination.index),
        child: content,
      );
    }

    return Scaffold(
      body: content,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab.index,
        onTap: _selectTab,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: theme.colorScheme.primary,
        unselectedItemColor: theme.colorScheme.onSurfaceVariant,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.dashboard),
            label: l10n.dashboard,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.calendar_today),
            label: l10n.calendar,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.work),
            label: l10n.workspace,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.chat_bubble_outline),
            label: l10n.chat,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: l10n.profile,
          ),
        ],
      ),
    );
  }
}
