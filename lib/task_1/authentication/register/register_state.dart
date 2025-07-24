
import 'package:MyTask/core/utils/async.dart';

class RegisterState {
  final Async<void> registerState;

  RegisterState(this.registerState);

  RegisterState.initial() : this(const Async.initial());

  RegisterState copyWith({Async<void>? registerState}) {
    return RegisterState(registerState ?? this.registerState);
  }

}