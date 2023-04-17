import 'package:equatable/equatable.dart';

class FactEntity extends Equatable {
  const FactEntity({
    required this.fact,
    required this.length,
  });

  final String fact;
  final int length;

  @override
  List<Object?> get props => [
        fact,
        length,
      ];
}
