import 'package:ecommerce/core/errors/server_exception.dart';
import 'package:ecommerce/core/networking/api/api_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/networking/api/end_points.dart';
import '../../data/model/signin_model.dart';
import '../../data/model/success_signin_model.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.api) : super(SigninInitial());
  final ApiConsumer api;

  SigninModel? userModel;

  //EmailController
  TextEditingController emailController = TextEditingController();
  //PasswordController
  TextEditingController passwordController = TextEditingController();
  //PhoneController
  TextEditingController pohneController = TextEditingController();
  //NameController
  TextEditingController nameController = TextEditingController();
  //FormKey
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  //Function To Signin

  signIn() async {
    try {
      emit(SigninLoading());
      final response = await api.post(
        EndPoints.register,
        data: {
          'email': emailController.text.trim(),
          'password': passwordController.text.trim(),
          'name': nameController.text.trim(),
          'phone': pohneController.text.trim(),
        },
      );
      if (response is Map<String, dynamic> &&
          response['status'] == true &&
          response['data'] != null) {
        userModel = SigninModel.fromJson(response['data']);
        emit(SigninSuccess());
      } else {
        final errorModel = ErrorSigninModel.fromJson(response);
        emit(SigninError(errMessage: errorModel.message ?? 'register error'));
      }
    } on ServerException catch (e) {
      emit(SigninError(errMessage: e.errorModel.message));
    }
  }
}
