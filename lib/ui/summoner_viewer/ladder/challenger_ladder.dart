import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:placeholder_website/ui/summoner_viewer/rito_api/challenger_player.dart';
import 'package:placeholder_website/ui/summoner_viewer/rito_api/rito_api_calls.dart';

class ChallengerLadder extends StatefulWidget {
  RitoApiCalls post =
      new RitoApiCalls(apiKey: 'RGAPI-2a0d3fd9-fb81-4cc1-916a-ff0761b362f0');



  @override
  _ChallengerLadderState createState() => _ChallengerLadderState();
}

class _ChallengerLadderState extends State<ChallengerLadder> {

  Future<List<ChallengerPlayer>> lista;

  @override
  void initState(){
    super.initState();

    lista= widget.post.getChallengerLadder();
  }

  Widget _listView(
      BuildContext context, List<ChallengerPlayer> challengerPlayers) {
    return ListView.builder(
      itemCount: challengerPlayers == null ? 0 : challengerPlayers.length,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            side: new BorderSide(
              color: Colors.black,
              width: 0.7,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset(
              'assets/ranked-emblems/Emblem_Challenjour.png',
              height: 50,
              width: 50,
            ),
            Text('#${index + 1}'),
            Container(
              child: Text(challengerPlayers[index].summonerName),
              width: 120,
            ),
            Text(
                '${challengerPlayers[index].wins}W/${challengerPlayers[index].losses}L'),
            Text('${challengerPlayers[index].winRatio}% W/L'),
          ]),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    print('build metod ladera');
    return Scaffold(
      appBar: AppBar(
        title: Text("EUW Challenjour List"),
      ),
      body: Container(
        child: FutureBuilder(
            future: lista,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              print('future builder bato!');
              if (snapshot.data == null) {
                print('future je null !');
                return Container(
                  child: Center(
                    child: Text("Loading..."),
                  ),
                );
              } else {
                return _listView(context, snapshot.data);
              }
            }),
      ),
    );
  }
}
