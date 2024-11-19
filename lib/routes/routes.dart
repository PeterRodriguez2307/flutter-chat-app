import 'package:flutter/material.dart';

import 'package:chat_tiempo_real/pages/chat_page.dart';
import 'package:chat_tiempo_real/pages/loading_page.dart';
import 'package:chat_tiempo_real/pages/login_page.dart';
import 'package:chat_tiempo_real/pages/register_page.dart';
import 'package:chat_tiempo_real/pages/usuarios_page.dart';

final Map<String, Widget Function(BuildContext)>appRoutes = {

  'usuarios': ( _ ) => UsuariosPage(),
  'chat': ( _ ) => ChatPage(),
  'login': ( _ ) => LoginPage(),
  'register': ( _ ) => RegisterPage(),
  'loading': ( _ ) => LoadingPage(),
};