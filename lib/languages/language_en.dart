import 'package:placeholder_website/languages/language.dart';

class LanguageEN extends Language{

  @override
  String get projectsLabel=>'Projects';

  @override
  String get contactLabel => 'Contact me';

  @override
  String get downloadCVLabel => 'Download CV';

  @override
  String get housekeepingDescriptionP1 => 'As an extension to reception software tools'
      ' HOUSEKEEPING app allows your cleaning service to receive notifications about rooms '
      'ready to be cleaned, as well as send information to reception when cleaning is done.'  ;

  @override
  String get tryDemo => 'Try playing around with this demo';

  @override
  String get housekeepingDescriptionP2 => 'HOUSEKEEPING app is powered by Flutter, using'
      ' a combination of Firebase and PHP backend services for authentication and'
      ' supplying and sending data. ';

  @override
  String get summonerViewerSearchHint => 'Hint: Try searching for \'Venour\'';




}