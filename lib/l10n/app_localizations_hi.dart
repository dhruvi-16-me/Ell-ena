// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Ell-ena';

  @override
  String get login => 'साइन इन';

  @override
  String get signUp => 'साइन अप';

  @override
  String get logout => 'लॉग आउट';

  @override
  String get logoutTitle => 'लॉग आउट करें?';

  @override
  String get logoutMessage =>
      'अपने खाते तक पहुँचने के लिए आपको दोबारा लॉग इन करना होगा।';

  @override
  String get dashboard => 'डैशबोर्ड';

  @override
  String get calendar => 'कैलेंडर';

  @override
  String get workspace => 'वर्कस्पेस';

  @override
  String get chat => 'चैट';

  @override
  String get profile => 'प्रोफ़ाइल';

  @override
  String get tasks => 'कार्य';

  @override
  String get tickets => 'टिकट';

  @override
  String get meetings => 'मीटिंग';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get save => 'सहेजें';

  @override
  String get loading => 'लोड हो रहा है...';

  @override
  String get search => 'खोजें';

  @override
  String get language => 'भाषा';

  @override
  String languageName(String localeCode) {
    String _temp0 = intl.Intl.selectLogic(
      localeCode,
      {
        'en': 'अंग्रेज़ी',
        'hi': 'हिन्दी',
        'other': '$localeCode',
      },
    );
    return '$_temp0';
  }

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get refresh => 'रीफ़्रेश करें';

  @override
  String get switchTeam => 'टीम बदलें';

  @override
  String teamCode(String code) {
    return 'टीम कोड: $code';
  }

  @override
  String get teamFallbackName => 'टीम';

  @override
  String get myTeam => 'मेरी टीम';

  @override
  String errorSwitchingTeam(String error) {
    return 'टीम बदलने में त्रुटि: $error';
  }

  @override
  String get dashboardWelcomeBack => 'वापसी पर स्वागत है,';

  @override
  String get dashboardTodaysOverview => 'आज का अवलोकन';

  @override
  String get dashboardTotalTasks => 'कुल कार्य';

  @override
  String get dashboardInProgress => 'प्रगति में';

  @override
  String get dashboardCompleted => 'पूर्ण';

  @override
  String get dashboardOpenTickets => 'खुले टिकट';

  @override
  String get dashboardTicketsInProgress => 'प्रगति में टिकट';

  @override
  String get dashboardResolved => 'हल किए गए';

  @override
  String get dashboardTaskCompletionByDay => 'दिन के अनुसार कार्य पूर्णता';

  @override
  String get dashboardWeek => 'सप्ताह';

  @override
  String get dashboardMonth => 'महीना';

  @override
  String get dashboardNoCompletions => 'अभी तक कोई कार्य पूरा नहीं हुआ';

  @override
  String get dashboardUpcoming => 'आगामी';

  @override
  String get dashboardNothingUpcoming =>
      'आज कुछ भी देय नहीं है और जल्द कुछ भी निर्धारित नहीं है';

  @override
  String get dashboardRecentActivity => 'हाल की गतिविधि';

  @override
  String get dashboardNoRecentActivity => 'कोई हाल की गतिविधि नहीं';

  @override
  String get dashboardTask => 'कार्य';

  @override
  String get dashboardTicket => 'टिकट';

  @override
  String get dashboardMeeting => 'मीटिंग';

  @override
  String dashboardStatus(String status) {
    return 'स्थिति: $status';
  }

  @override
  String get newTask => 'नया कार्य';

  @override
  String get newTicket => 'नया टिकट';

  @override
  String get newMeeting => 'नई मीटिंग';
}
