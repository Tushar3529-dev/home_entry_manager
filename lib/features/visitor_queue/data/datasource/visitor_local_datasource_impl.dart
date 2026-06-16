import 'dart:convert';

import 'package:assignment/features/visitor_queue/data/datasource/visitor_local_datasource.dart';
import 'package:assignment/features/visitor_queue/data/models/visitor_model.dart';
import 'package:flutter/services.dart';

class VisitorLocalDataSourceImpl
    implements VisitorLocalDataSource {

  @override
  Future<List<VisitorModel>> getVisitors() async {

   final jsonString =
    await rootBundle.loadString(
  'lib/features/visitor_queue/data/local/visitor_queue.json',
);

    final List<dynamic> jsonList =
        jsonDecode(jsonString);

  /*   return jsonList
        .map(
          (json) => VisitorModel.fromJson(
            json as Map<String, dynamic>,
          ),
        )
        .toList();
         */
        final visitors =
    jsonList
        .map(
          (json) => VisitorModel.fromJson(
            json as Map<String, dynamic>,
          ),
        )
        .toList();

print('Visitors Loaded: ${visitors.length}');

return visitors;
  }
}