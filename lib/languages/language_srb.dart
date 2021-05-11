import 'package:placeholder_website/languages/language.dart';

class LanguageSRB extends Language{

  @override
  String get projectsLabel=>'Projekti';

  @override
  String get contactLabel => 'Kontakt';

  @override
  String get downloadCVLabel => 'Download CV';

  @override
  String get housekeepingDescriptionP1 => 'Dodatak softverskim alatima recepcije'
      ' \'HOUSEKEEPING\' aplikacija omogućava uslugi čišćenja da prima notifikacije o'
      'sobama spremnim za čisćenje, kao i  da šalje informacije recepciji o očišćenim sobama ';


  @override
  String get tryDemo => 'Testirajte demo';

  @override
  String get housekeepingDescriptionP2 => 'HOUSEKEEPING aplikaciju pokreće Flutter. Koristi '
      'kombinaciju Firebase i PHP backend servisa za autentifikaciju, slanje i primanje podataka.';

  @override
  String get summonerViewerSearchHint => 'Pomoć: Probaj tražiti \'Venour\'';

  @override
  String get forPlatforms => 'Za platforme:';

  @override
  String get poweredBy => 'Pokreće:';

  @override
  String get accept => 'Potvrdi';

  @override
  String get confirmRoomChange => 'Sigurno promjeniti stanje sobe';

  @override
  String get confirmationNeeded => 'Potrebna potvrda!';

  @override
  String get decline => 'Prekini';

  @override
  String get undo => 'Poništi';

  @override
  String get undoAction => 'Poništi akciju?';

  @override
  String get room =>'Soba';

  @override
  String get clean =>'Očišćeno';

}