import 'package:ecommerce/core/errors/server_exception.dart';
import 'package:ecommerce/core/networking/api/api_consumer.dart';
import 'package:ecommerce/core/networking/api/end_points.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/error_login_model.dart';
import '../../data/model/login_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.api) : super(LoginInitial());

  final ApiConsumer api;

  LoginModel? user;

  login({required String email, required String password}) async {
    try {
      emit(LoginLoading());
      final response = await api.post(
        EndPoints.login,
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response is Map<String, dynamic> &&
          response['status'] == true &&
          response['data'] != null) {
        user = LoginModel.fromJson(response['data']);
        emit(LoginSuccess());
      } else {
        final errorModel = ErrorModel.fromJson(response);
        emit(LoginError(errMessage: errorModel.message));
      }
    } on ServerException catch (e) {
      emit(LoginError(errMessage: e.errorModel.message));
    }
  }
}
