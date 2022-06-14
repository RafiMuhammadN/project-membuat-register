import 'package:flutter/material.dart';
import 'package:project_membuat_register_ke_2/locator.dart';
import 'package:project_membuat_register_ke_2/services/navigation_service.dart';
import 'package:project_membuat_register_ke_2/ui/router.dart';
import 'package:project_membuat_register_ke_2/ui/views/login_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoginView(),
      onGenerateRoute: generateRoute,
      navigatorKey: locator<NavigationService>().navigationKey,
    );
  }
}
