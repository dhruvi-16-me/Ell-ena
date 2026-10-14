// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Ell-ena';

  @override
  String get login => 'Sign In';

  @override
  String get signUp => 'Sign Up';

  @override
  String get logout => 'Logout';

  @override
  String get logoutTitle => 'Log out?';

  @override
  String get logoutMessage =>
      'You will need to log in again to access your account.';

  @override
  String get dashboard => 'Dashboard';

  @override
  String get calendar => 'Calendar';

  @override
  String get workspace => 'Workspace';

  @override
  String get chat => 'Chat';

  @override
  String get profile => 'Profile';

  @override
  String get tasks => 'Tasks';

  @override
  String get tickets => 'Tickets';

  @override
  String get meetings => 'Meetings';

  @override
  String get settings => 'Settings';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get loading => 'Loading...';

  @override
  String get search => 'Search';

  @override
  String get language => 'Language';

  @override
  String languageName(String localeCode) {
    String _temp0 = intl.Intl.selectLogic(
      localeCode,
      {
        'en': 'English',
        'hi': 'हिन्दी',
        'other': '$localeCode',
      },
    );
    return '$_temp0';
  }

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get refresh => 'Refresh';

  @override
  String get switchTeam => 'Switch Team';

  @override
  String teamCode(String code) {
    return 'Team Code: $code';
  }

  @override
  String get teamFallbackName => 'Team';

  @override
  String get myTeam => 'My Team';

  @override
  String errorSwitchingTeam(String error) {
    return 'Error switching team: $error';
  }

  @override
  String get dashboardWelcomeBack => 'Welcome back,';

  @override
  String get dashboardTodaysOverview => 'Today\'s Overview';

  @override
  String get dashboardTotalTasks => 'Total Tasks';

  @override
  String get dashboardInProgress => 'In Progress';

  @override
  String get dashboardCompleted => 'Completed';

  @override
  String get dashboardOpenTickets => 'Open Tickets';

  @override
  String get dashboardTicketsInProgress => 'Tickets In Progress';

  @override
  String get dashboardResolved => 'Resolved';

  @override
  String get dashboardTaskCompletionByDay => 'Task Completion by Day';

  @override
  String get dashboardWeek => 'Week';

  @override
  String get dashboardMonth => 'Month';

  @override
  String get dashboardNoCompletions => 'No completions yet';

  @override
  String get dashboardUpcoming => 'Upcoming';

  @override
  String get dashboardNothingUpcoming => 'Nothing due today or scheduled soon';

  @override
  String get dashboardRecentActivity => 'Recent Activity';

  @override
  String get dashboardNoRecentActivity => 'No recent activity';

  @override
  String get dashboardTask => 'Task';

  @override
  String get dashboardTicket => 'Ticket';

  @override
  String get dashboardMeeting => 'Meeting';

  @override
  String dashboardStatus(String status) {
    return 'Status: $status';
  }

  @override
  String get newTask => 'New Task';

  @override
  String get newTicket => 'New Ticket';

  @override
  String get newMeeting => 'New Meeting';
}
