import 'package:hydrated_bloc/hydrated_bloc.dart';

class FirstTimeCubit extends HydratedCubit<bool> {
  FirstTimeCubit() : super(true);

  void getStarted() => emit(false);

  @override
  bool fromJson(Map<String, dynamic> json) => json['isFirstTime'] as bool;

  @override
  Map<String, bool> toJson(bool state) => {'isFirstTime': state};
}
