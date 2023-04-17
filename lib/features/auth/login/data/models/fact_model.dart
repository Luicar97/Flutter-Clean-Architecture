// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trumed/features/auth/login/domain/entity/fact_entity.dart';

part 'fact_model.freezed.dart';
part 'fact_model.g.dart';

FactModel FactModelFromJson(String str) => FactModel.fromJson(json.decode(str));

String FactModelToJson(FactModel data) => json.encode(data.toJson());

FactEntity toEntityFactModel(FactModel factModel) => FactEntity(
      fact: factModel.fact,
      length: factModel.length,
    );

@freezed
class FactModel with _$FactModel {
  const factory FactModel({
    required String fact,
    required int length,
  }) = _factModel;

  factory FactModel.fromJson(Map<String, Object?> json) =>
      _$FactModelFromJson(json);
}
