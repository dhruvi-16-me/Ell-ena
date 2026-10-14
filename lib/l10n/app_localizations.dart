import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('hi')
  ];

  /// The application title shown in the task switcher and browser tab.
  ///
  /// In en, this message translates to:
  /// **'Ell-ena'**
  String get appTitle;

  /// Primary authentication action on the login screen.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get login;

  /// Registration action on the authentication screens.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// Logout action label.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// Title for the logout confirmation dialog.
  ///
  /// In en, this message translates to:
  /// **'Log out?'**
  String get logoutTitle;

  /// Body text for the logout confirmation dialog.
  ///
  /// In en, this message translates to:
  /// **'You will need to log in again to access your account.'**
  String get logoutMessage;

  /// Dashboard navigation label.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// Calendar navigation label.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get calendar;

  /// Workspace navigation label.
  ///
  /// In en, this message translates to:
  /// **'Workspace'**
  String get workspace;

  /// Chat navigation label.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// Profile navigation label.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// Tasks section label.
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get tasks;

  /// Tickets section label.
  ///
  /// In en, this message translates to:
  /// **'Tickets'**
  String get tickets;

  /// Meetings section label.
  ///
  /// In en, this message translates to:
  /// **'Meetings'**
  String get meetings;

  /// Settings section label.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Generic cancel action.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Generic save action.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Generic loading indicator label.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// Generic search placeholder label.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// Language preference setting label.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Display name for a language identified by locale code.
  ///
  /// In en, this message translates to:
  /// **'{localeCode, select, en{English} hi{हिन्दी} other{{localeCode}}}'**
  String languageName(String localeCode);

  /// Title for the language selection sheet.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// Tooltip for the button that reloads the open page.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// Title of the team switcher dialog and tooltip of the team button.
  ///
  /// In en, this message translates to:
  /// **'Switch Team'**
  String get switchTeam;

  /// Team code shown under each team in the team switcher.
  ///
  /// In en, this message translates to:
  /// **'Team Code: {code}'**
  String teamCode(String code);

  /// Shown when a team has no name.
  ///
  /// In en, this message translates to:
  /// **'Team'**
  String get teamFallbackName;

  /// Shown when the current team's name is unknown.
  ///
  /// In en, this message translates to:
  /// **'My Team'**
  String get myTeam;

  /// Snackbar when switching teams fails.
  ///
  /// In en, this message translates to:
  /// **'Error switching team: {error}'**
  String errorSwitchingTeam(String error);

  /// Greeting above the user's name on the phone dashboard.
  ///
  /// In en, this message translates to:
  /// **'Welcome back,'**
  String get dashboardWelcomeBack;

  /// Title of the phone dashboard summary card.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Overview'**
  String get dashboardTodaysOverview;

  /// Dashboard stat label.
  ///
  /// In en, this message translates to:
  /// **'Total Tasks'**
  String get dashboardTotalTasks;

  /// Dashboard stat label for tasks in progress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get dashboardInProgress;

  /// Dashboard stat label for completed tasks.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get dashboardCompleted;

  /// Dashboard stat label.
  ///
  /// In en, this message translates to:
  /// **'Open Tickets'**
  String get dashboardOpenTickets;

  /// Dashboard stat label.
  ///
  /// In en, this message translates to:
  /// **'Tickets In Progress'**
  String get dashboardTicketsInProgress;

  /// Dashboard stat label for resolved tickets.
  ///
  /// In en, this message translates to:
  /// **'Resolved'**
  String get dashboardResolved;

  /// Title of the dashboard completion chart.
  ///
  /// In en, this message translates to:
  /// **'Task Completion by Day'**
  String get dashboardTaskCompletionByDay;

  /// Chart range option.
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get dashboardWeek;

  /// Chart range option.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get dashboardMonth;

  /// Empty state of the completion chart.
  ///
  /// In en, this message translates to:
  /// **'No completions yet'**
  String get dashboardNoCompletions;

  /// Title of the upcoming items section.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get dashboardUpcoming;

  /// Empty state of the upcoming section.
  ///
  /// In en, this message translates to:
  /// **'Nothing due today or scheduled soon'**
  String get dashboardNothingUpcoming;

  /// Title of the recent activity section.
  ///
  /// In en, this message translates to:
  /// **'Recent Activity'**
  String get dashboardRecentActivity;

  /// Empty state of the recent activity section.
  ///
  /// In en, this message translates to:
  /// **'No recent activity'**
  String get dashboardNoRecentActivity;

  /// Type label for a task in dashboard lists.
  ///
  /// In en, this message translates to:
  /// **'Task'**
  String get dashboardTask;

  /// Type label for a ticket in dashboard lists.
  ///
  /// In en, this message translates to:
  /// **'Ticket'**
  String get dashboardTicket;

  /// Fallback title for a meeting without a title.
  ///
  /// In en, this message translates to:
  /// **'Meeting'**
  String get dashboardMeeting;

  /// Status line in the recent activity list.
  ///
  /// In en, this message translates to:
  /// **'Status: {status}'**
  String dashboardStatus(String status);

  /// Wide-screen top bar button that opens the create-task screen.
  ///
  /// In en, this message translates to:
  /// **'New Task'**
  String get newTask;

  /// Wide-screen top bar button that opens the create-ticket screen.
  ///
  /// In en, this message translates to:
  /// **'New Ticket'**
  String get newTicket;

  /// Wide-screen top bar button that opens the create-meeting screen.
  ///
  /// In en, this message translates to:
  /// **'New Meeting'**
  String get newMeeting;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'hi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'hi':
      return AppLocalizationsHi();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
