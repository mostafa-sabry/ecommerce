import 'package:ecommerce/core/theming/my_colors.dart';
import 'package:ecommerce/features/auth/signin/logic/cubit/signin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/show_toast.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/widget/my_button.dart';
import '../../../../../core/widget/my_text_form_field.dart';
import '../../../login/ui/widget/my_divider.dart';
import '../../../login/ui/widget/my_login_google.dart';
import 'dont_have_an_account.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({
    super.key,
  });

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          showTost(msg: 'Registered Successfully');
          // Navigator.pushReplacementNamed(context, Routes.home);
        } else if (state is SigninError) {
          showTost(msg: state.errMessage);
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<SigninCubit>().formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(32),
                Text(
                  'Join With Us',
                  style: FontHelper.font32Dark,
                ),
                Text(
                  'Welcome Back, Enjoy Shopping and Offers',
                  style: FontHelper.font16Gray,
                ),
                verticalSpace(57),
                MyTextFormField(
                  hintText: 'Name',
                  controller: context.read<SigninCubit>().nameController,
                  isObscure: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Name';
                    }
                    return null;
                  },
                ),
                verticalSpace(24),
                MyTextFormField(
                  hintText: 'Email',
                  controller: context.read<SigninCubit>().emailController,
                  isObscure: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
                ),
                verticalSpace(24),
                MyTextFormField(
                  hintText: 'Phone',
                  keyboardType: TextInputType.phone,
                  controller: context.read<SigninCubit>().pohneController,
                  isObscure: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter  Phone';
                    }
                    return null;
                  },
                ),
                verticalSpace(24),
                MyTextFormField(
                  hintText: 'Password',
                  controller: context.read<SigninCubit>().passwordController,
                  isObscure: isObscure,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
                    }
                    return null;
                  },
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: isObscure
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                ),
                verticalSpace(10),
                Text(
                  'Forget you password ?',
                  style: FontHelper.font12Blue,
                ),
                verticalSpace(16),
                state is SigninLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                        color: MyColors.myApp,
                      ))
                    : MyButton(
                        text: 'Register',
                        onTap: () {
                          if (context
                              .read<SigninCubit>()
                              .formKey
                              .currentState!
                              .validate()) {
                            context.read<SigninCubit>().signIn();
                          }
                        },
                        color: MyColors.myApp,
                      ),
                verticalSpace(44.5),
                const MyDivider(),
                verticalSpace(24),
                const MyLoginGoogle(),
                verticalSpace(24),
                const DontHaveAnAccount()
              ],
            ),
          ),
        );
      },
    );
  }
}
