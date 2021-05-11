import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:placeholder_website/model/projects_model.dart';
import 'package:placeholder_website/ui/summoner_viewer/rito_api/rito_api_calls.dart';
import 'package:placeholder_website/ui/summoner_viewer/rito_api/summoner/summoner.dart';
import 'package:placeholder_website/ui/summoner_viewer/summoner_search/search_page_model.dart';
import 'package:provider/provider.dart';

class SearchPageBloc{

  SearchPageBloc({@required this.post});

  final RitoApiCalls post;

  final StreamController<SearchPageModel> _modelController=StreamController<SearchPageModel>();
  Stream<SearchPageModel> get modelStream=>_modelController.stream;
  SearchPageModel _model=SearchPageModel();

  void dispose(){
    _modelController.close();
  }

  Future<Summoner> searchBySummonerName(BuildContext context) async{
    updateWith(submitted:true,isLoading: true);
    String hint=Provider.of<ProjectsModel>(context,listen:false).currentLanguage.summonerViewerSearchHint;
    try {
      if(_model.searchText!='Venour'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            hint,
            textAlign: TextAlign.center,
          ),
          duration: const Duration(seconds: 5),
        ));
        return null;
      }
      Summoner summoner=await post.getSummoner(_model.searchText,regionTextFix(_model.dropdownValue));
      print('SummonerID:${summoner.id}');
      return summoner;
    }catch(e){
      rethrow;
    }finally{
      updateWith(isLoading:false);
    }
  }

  String regionTextFix(String s){
    switch(s){
      case 'EUW':
        return 'EUW1';
      case 'EUNE':
        return 'EUN1';
      case 'NA':
        return 'NA1';
    }
  }

  void updateSearchText(String searchText)=>updateWith(searchText: searchText);
  void updateDropdownValue(String dropdownValue)=>updateWith(dropdownValue: dropdownValue);

  void updateWith({
    String searchText,
    String dropdownValue,
    bool isLoading,
    bool submitted,
  }){
    _model=_model.copyWith(
      searchText: searchText,
      dropdownValue: dropdownValue,
      isLoading: isLoading,
      submitted: submitted,
    );
    _modelController.add(_model);
  }
}