import 'package:flutter/material.dart';
import 'package:muve_application/viewmodels/compose_view_model.dart';
import 'package:muve_application/viewmodels/routine_view_model.dart';
import 'package:muve_application/viewmodels/user_view_model.dart';
import 'package:provider/provider.dart';
import 'package:muve_application/routes.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<UserViewModel>(
          create: (context) => UserViewModel()),
      ChangeNotifierProvider<RoutineViewModel>(
          create: (context) => RoutineViewModel()),
      ChangeNotifierProvider<ComposeViewModel>(
          create: (context) => ComposeViewModel()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Muve',
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blueGrey),
        routerConfig: generateRouter());
  }
}
