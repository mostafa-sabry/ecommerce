import 'package:dio/dio.dart';
import 'package:ecommerce/core/networking/api/dio_consumer.dart';
import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/features/home/ui/screens/home_screen.dart';
import 'package:ecommerce/features/login/logic/cubit/login_cubit.dart';
import 'package:ecommerce/features/login/ui/screen/login_screen.dart';
import 'package:ecommerce/features/signin/ui/screen/signin_account_screen.dart';
import 'package:ecommerce/features/splash/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routing {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(DioConsumer(dio: Dio())),
            child: const LoginScreen(),
          ),
        );
      case Routes.register:
        return MaterialPageRoute(builder: (context) => const SigninAccount());

      default:
        return MaterialPageRoute(builder: (context) => const NoRouteScreen());
    }
  }
}

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('No route Screen'),
      ),
    );
  }
}
