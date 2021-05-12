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

  @override
  String get forPlatforms => 'For platforms:';

  @override
  String get poweredBy => 'Powered by:';

  @override
  String get accept => 'Accept';

  @override
  String get confirmRoomChange => 'Confirm change. Room ';

  @override
  String get confirmationNeeded => 'Confirmation necessary';

  @override
  String get decline => 'Decline';

  @override
  String get undo => 'UNDO';

  @override
  String get undoAction =>'Undo action?';

  @override
  String get room =>'Room';

  @override
  String get clean =>'Clean';

  @override
  String get summonerViewerDescriptionP1 => 'Search for summoner information from League of Legends players by their username. Find information like their level, position on rank list, match history...';

  @override
  String get summonerViewerDescriptionP2 => 'SUMMONER VIEWER consumes Riot API for player information.';



}