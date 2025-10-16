import 'package:flutter/material.dart';

/// Contém todas as strings fixas usadas na interface do aplicativo.
class AppStrings {
  // Construtor privado para impedir a criação de instâncias.
  AppStrings._();

  // Acessadores estáticos para as classes aninhadas.
  static final Greetings greetings = Greetings._();
  static final PageTitles pageTitles = PageTitles._();
  static final LoginForm loginForm = LoginForm._();
  static final Assets assets = Assets._();
  static final DebugStatus debugStatus = DebugStatus._();
  static final FontApp fontApp = FontApp._();
}

/// Textos de saudação e boas-vindas.
class Greetings {
  // Construtor privado para garantir o uso via 'AppStrings.greetings'.
  Greetings._();
  final String welcome =
      'Olá, seja bem vindo(a). Para começar faça o login ou crie uma conta.';
}

/// Títulos usados em AppBars e páginas.
class PageTitles {
  PageTitles._();
  final String home = 'Página Inicial - Login';
}

/// Textos para os formulários do aplicativo.
class LoginForm {
  LoginForm._();
  final String usernameLabel = 'Usuário de rede';
  final String usernameHelper = 'DRT ou email Einstein';
  final String usernameError = 'DRT ou email inválido';
  final String passwordLabel = 'Senha de rede';
}

/// Caminhos para os assets (imagens, etc).
class Assets {
  Assets._();
  final String logo = 'assets/images/seu_logo.png';
}

/// Define label debug como false
class DebugStatus {
  DebugStatus._();
  final bool debug = false;
}

class FontApp {
  FontApp._();
  static final ThemeData montSerrat = ThemeData(fontFamily: 'Montserrat');
}
