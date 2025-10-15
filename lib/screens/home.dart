import 'package:ehi_system/themes/colors.dart';
import 'package:ehi_system/themes/texts.dart';
import 'package:ehi_system/validators/validators_home.dart';

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
  //Cria a key que controla o formulário. Essencial para uso do validator.
  final _formKey = GlobalKey<FormState>();

  //Subscrição do método build do [StatefulWidget]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroud da tela a depender da plataforma
      backgroundColor: Colors.transparent,
      //parte superior do app
      appBar: AppBar(backgroundColor: getBackgroundColor()),
      //alinha tudo ao centro
      body: Center(
        //envolve os campos do fomrs. Necessário para o validator.
        child: Form(
          // key privada do formulário.
          key: _formKey,
          // coluna única que contém o formulário.
          child: Column(
            //alinhamento vertical.
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // define o tamanho da box do formulário de login
              SizedBox(
                width: 300,

                child:
                    //campos do formulário
                    TextFormField(
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, insira um usuário';
                        }

                        return null;
                      },
                      decoration:
                          //Define o ícone a esquerda do campo
                          InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: hintTextFormUser,
                            icon: const Icon(Icons.person),
                            iconColor: azul60,
                          ),
                    ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processando Dados...')),
                    );
                  }
                },
                child: const Text('Validar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
