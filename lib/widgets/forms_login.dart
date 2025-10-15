import 'package:ehi_system/themes/colors.dart';
import 'package:ehi_system/themes/texts.dart';
import 'package:flutter/material.dart';

/// Classe representa o Widget de captura de dados do usuário
class FormsLogin extends StatefulWidget {
  const FormsLogin({super.key});

  @override
  State<FormsLogin> createState() => _FormsLoginState();
}

class _FormsLoginState extends State<FormsLogin> {
  @override
  Widget build(BuildContext context) {
    //Cria a key que controla o formulário. Essencial para uso do validator.
    // ignore: no_leading_underscores_for_local_identifiers
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
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
              //Input User Credentials
              TextFormField(
                selectAllOnFocus: true,
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
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.person),
                      iconColor: azul60,
                      labelText: textLabelFormInput,
                      helperText: helperTextInputForms,
                      errorText: errorTextInputForms,
                      focusColor: azul60,
                      hoverColor: azul60,
                    ),
              ),
              //Input User Password
              TextFormField(),

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
