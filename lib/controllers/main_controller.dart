import 'package:flutter/material.dart';
import 'package:to_do_app/model/list_model.dart';

class ListProvider extends ChangeNotifier {
  List<ListModel> toDoList = [];
}