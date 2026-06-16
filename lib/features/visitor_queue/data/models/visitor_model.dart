import 'package:assignment/core/enums/visitor_status.dart';
import 'package:assignment/core/enums/visitor_type.dart';
import 'package:assignment/features/visitor_queue/domain/entities/visitor_entity.dart';

class VisitorModel extends VisitorEntity {
  const VisitorModel({
    required super.id,
    required super.name,
    required super.image,
    required super.unit,
    required super.type,
    required super.status,
    required super.time,
  });

  factory VisitorModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return VisitorModel(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      unit: json["unit"],
      type: VisitorType.values.byName(
        json["type"],
      ),
      status: VisitorStatus.values.byName(
        json["status"],
      ),
      time: json["time"],
    );
  }
}