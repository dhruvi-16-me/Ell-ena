import 'package:flutter/material.dart';

import 'shell_destination.dart';
import 'widgets/shell_navigation_rail.dart';
import 'widgets/shell_top_bar.dart';

class DesktopShell extends StatelessWidget {
  final Widget child;
  final ShellDestination selectedDestination;
  final ValueChanged<ShellDestination>? onDestinationSelected;

  final ShellPageAction? pageAction;

  /// Reloads the open page from the top bar; null hides the refresh button.
  final Future<void> Function()? onRefresh;
  final VoidCallback? onTeamChanged;
  final VoidCallback? onOpenProfile;

  const DesktopShell({
    super.key,
    required this.child,
    this.selectedDestination = ShellDestination.dashboard,
    this.onDestinationSelected,
    this.pageAction,
    this.onRefresh,
    this.onTeamChanged,
    this.onOpenProfile,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ShellNavigationRail(
            selectedDestination: selectedDestination,
            onDestinationSelected: onDestinationSelected,
          ),
          VerticalDivider(
            width: 1,
            thickness: 1,
            color: colorScheme.outlineVariant,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ShellTopBar(
                  destination: selectedDestination,
                  pageAction: pageAction,
                  onRefresh: onRefresh,
                  onTeamChanged: onTeamChanged,
                  onOpenProfile: onOpenProfile,
                ),
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
