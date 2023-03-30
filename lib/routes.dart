import 'package:flutter/material.dart';
import 'package:rse_test_app/views/Beranda/beranda_guest.dart';
import 'package:rse_test_app/views/Daftar/daftar.dart';
import 'package:rse_test_app/views/Janji/all_janji.dart';
import 'package:rse_test_app/views/Login/login.dart';

import 'views/beranda.dart';

var customRoutes = <String, WidgetBuilder>{
  '/login': (context) => const LoginPage(),
  '/daftar': (context) => const DaftarPage(),
  '/beranda': (context) => const Beranda(),
  '/beranda/guest': (context) => const BerandaGuestPage(),
  '/janji/all': (context) => const AllJanji(showBackButton: true),
};
