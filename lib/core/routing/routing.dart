import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/features/home/ui/screens/home_screen.dart';
import 'package:ecommerce/features/login/ui/screen/login_screen.dart';
import 'package:ecommerce/features/splash/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Routing {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

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
