import 'package:flutter/material.dart';
import 'package:pendataanwarga/Views/login_view.dart';
import 'package:pendataanwarga/providers/dashboard_provider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (bc) => DashboardProvider()),
        ChangeNotifierProvider(create: (bc) => BeritaPanelProvider()),
        ChangeNotifierProvider(create: (bc) => BeritaLoadDataProvider()),
      ],
      builder: (context, Widget) {
        return MaterialApp(
          theme: ThemeData(
              appBarTheme: AppBarTheme(backgroundColor: Colors.orange)),
          home: LoginView(),
        );
      }));
}
