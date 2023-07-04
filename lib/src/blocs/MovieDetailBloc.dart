import 'dart:async';
import 'package:flutter_learning/src/resources/Repository.dart';
import 'package:rxdart/rxdart.dart';


class MovieDetailsBloc{
  final repository = Repository();
  final movieId = PublishSubject<String>();


  dispose(){
    movieId.close();

  }
}
