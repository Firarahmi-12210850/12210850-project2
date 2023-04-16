import 'package:apk1/providers/dashboard_provider.dart';
import 'package:apk1/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main(List<String> args) {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (bc) => DashboardProvider()),
        ChangeNotifierProvider(create: (bc) => BeritaPanelProvider()),
        ChangeNotifierProvider(create: (bc) => BeritaLoadDataProvider()),
      ],
      builder: (context, Widget) {
        return MaterialApp(
          theme: ThemeData(
              appBarTheme: AppBarTheme(
            backgroundColor: Color.fromARGB(255, 217, 232, 52),
          )),
          home: LoginView(),
        );
      }));
}
