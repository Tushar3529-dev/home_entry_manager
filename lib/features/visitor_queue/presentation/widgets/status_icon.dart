import 'package:assignment/core/enums/visitor_status.dart';
import 'package:flutter/material.dart';

class StatusIcon extends StatelessWidget {

  final VisitorStatus status;

  const StatusIcon({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {

    switch (status) {

      case VisitorStatus.Pending:
        return CircleAvatar(
          backgroundColor: Colors.orange,
          child: Icon(Icons.schedule,color:Colors.white),
        );

      case VisitorStatus.Approved:
        return CircleAvatar(
          backgroundColor: Colors.green,
          child: Icon(Icons.check,color:Colors.white),
        );

      case VisitorStatus.Cancelled:
        return CircleAvatar(
          backgroundColor: Colors.red,
          child: Icon(Icons.close,color:Colors.white),
        );
    }
  }
}