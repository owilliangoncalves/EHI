import 'package:ehi_system/validators/validators_home.dart';
import 'package:ehi_system/widgets/forms_login.dart';
import 'package:flutter/material.dart';

/// Cria a tela inicial onde o usuário digita as informações para logar no sistema. [homeTitle] é obrigatório.

class HomeScreen extends StatefulWidget {
  final String homeTitle;
  const HomeScreen({
    /// super da extensão da classe.
    super.key,

    ///Titulo que será aplicado a página.
    required this.homeTitle,
  });

  ///Criar um state para [HomeScreen]
  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: getBackgroundColor()),
      body: FormsLogin(),
    );
  }
}
