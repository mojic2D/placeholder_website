import 'package:flutter/material.dart';
import 'package:placeholder_website/ui/summoner_viewer/common_widgets/cards/summoner_info_display_card.dart';
import 'package:placeholder_website/ui/summoner_viewer/common_widgets/text_styles/text_styles.dart';
import 'package:placeholder_website/ui/summoner_viewer/rito_api/summoner/summoner.dart';

class BaseSummonerInformationCard extends StatelessWidget {

  BaseSummonerInformationCard({@required this.summoner});

  final Summoner summoner;

  @override
  Widget build(BuildContext context) {
    return SummonerInfoDisplayCard(
      imageAsset: 'assets/summoner_viewer/1668.png',
      columnChildren: [
        Text(
          '${summoner.name}',
          style: TextStyles.summonerName,
        ),
        SizedBox(
          height: 10,
        ),
        Row(children: [
          Text(
            'Summoner level:',
            style: TextStyles.summonerLevel,
          ),
          Text(
            ' ${summoner.summonerLevel}',
            style: TextStyles.summonerLevelBlue,
          ),
        ]),

      ],
    );
  }


}
