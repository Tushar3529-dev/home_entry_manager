import 'package:assignment/core/enums/visitor_status.dart';
import 'package:assignment/core/enums/visitor_type.dart';

class VisitorEntity {
  final int id;
  final String name;
  final String image;
  final String unit;
  final VisitorType type;
  final VisitorStatus status;
  final String time;

  const VisitorEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.unit,
    required this.type,
    required this.status,
    required this.time,
  });
}