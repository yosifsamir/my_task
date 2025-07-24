import 'package:MyTask/core/utils/async.dart';
import 'package:MyTask/di/task_get_it.dart';
import 'package:MyTask/task_1/authentication/register/data/register_repository_impl.dart';
import 'package:MyTask/task_1/authentication/register/domain/register_repository.dart';
import 'package:MyTask/task_1/authentication/register/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  late final RegisterRepository _registerRepository;

  RegisterCubit() : super(RegisterState.initial()) {
    _registerRepository = getIt<RegisterRepositoryImpl>();
  }

  static RegisterCubit of(context) => BlocProvider.of(context);

  Future<void> register(String userName, String password) async {
    emit(state.copyWith(registerState: const Async.loading()));
    try {
      await _registerRepository.register(userName, password);
      emit(state.copyWith(registerState: const Async.successWithoutData()));
    } catch (e) {
      emit(state.copyWith(
          registerState: const Async.failure("Something Went Wrong")));
    }
  }
}
