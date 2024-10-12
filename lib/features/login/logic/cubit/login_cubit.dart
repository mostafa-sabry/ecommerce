import 'package:ecommerce/core/errors/server_exception.dart';
import 'package:ecommerce/core/networking/api/api_consumer.dart';
import 'package:ecommerce/core/networking/api/end_points.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.api) : super(LoginInitial());

  final ApiConsumer api;

  login({required String email, required String password}) async {
    try {
      emit(LoginLoading());
      final response = await api.post(
        EndPoints.login,
        data: {
          email: email,
          password: password,
        },
      );
      emit(LoginSuccess());
    } on ServerException catch (e) {
      emit(LoginError(errMessage: e.errorModel.message));
    }
  }
}
