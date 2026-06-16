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

      case VisitorStatus.pending:
        return CircleAvatar(
          backgroundColor: Colors.orange,
          child: Icon(Icons.schedule),
        );

      case VisitorStatus.approved:
        return CircleAvatar(
          backgroundColor: Colors.green,
          child: Icon(Icons.check),
        );

      case VisitorStatus.cancelled:
        return CircleAvatar(
          backgroundColor: Colors.red,
          child: Icon(Icons.close),
        );
    }
  }
}