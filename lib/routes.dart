import 'package:flutter/material.dart';
import 'package:rse_test_app/views/Daftar/daftar.dart';
import 'package:rse_test_app/views/Login/login.dart';

var customRoutes = <String, WidgetBuilder>{
  '/login': (context) => const LoginPage(),
  '/daftar': (context) => const DaftarPage(),
};
