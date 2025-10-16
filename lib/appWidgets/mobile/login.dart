import 'package:ehi_system/appThemes/colors.dart';
import 'package:flutter/material.dart';
import 'package:ehi_system/appThemes/texts.dart';

///StateFulWidget que representa o forms de login com redimensionamento da imagem
class MobileFormsLogin extends StatefulWidget {
  //faz ligação com a super da classe que é extendida
  const MobileFormsLogin({super.key});

  //subscrição do método de build
  @override
  State<MobileFormsLogin> createState() => _MobileFormsLoginState();
}

///Classe privada de estados do forms de lofin
class _MobileFormsLoginState extends State<MobileFormsLogin> {
  // A chave para gerenciar o estado do formulário.
  final _formKey = GlobalKey<FormState>();

  // Controladores para acessar compos de texto
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  // Gerenciar o estado de foco dos campos.
  final _userFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  // Variáveis de estado.
  double _imageHeight = 100.0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    // Adiciona "listeners" para reagir às mudanças de foco.
    _userFocusNode.addListener(_onFocusChange);
    _passwordFocusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _userFocusNode.removeListener(_onFocusChange);
    _passwordFocusNode.removeListener(_onFocusChange);

    _userController.dispose();
    _passwordController.dispose();
    _userFocusNode.dispose();
    _passwordFocusNode.dispose();

    super.dispose();
  }

  void _onFocusChange() {
    final hasFocus = _userFocusNode.hasFocus || _passwordFocusNode.hasFocus;
    setState(() {
      _imageHeight = hasFocus ? 100.0 : 150.0;
    });
  }

  /// Processa a submissão do formulário.
  Future<void> _submitForm() async {
    // Verifica se o formulário é válido.
    if (_formKey.currentState?.validate() ?? false) {
      setState(() => _isLoading = true);

      // Simula uma chamada de rede.
      await Future.delayed(const Duration(seconds: 2));

      // Usa os controladores para pegar os valores.
      final username = _userController.text;
      //final password = _passwordController.text;

      // Esconde o teclado
      FocusScope.of(context).unfocus();

      // Mostra o resultado.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login bem-sucedido para: $username')),
      );

      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // GestureDetector para esconder o teclado ao tocar fora dos campos.
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              // Ocupa a altura da tela, permitindo o alinhamento central.
              minHeight: MediaQuery.of(context).size.height,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Anima a mudança de altura da imagem suavemente.
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    height: _imageHeight,
                    child: Image.asset(uriLogo, fit: BoxFit.contain),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: _userController,
                    focusNode: _userFocusNode,

                    decoration: const InputDecoration(
                      labelText: 'Usuário',
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Por favor, insira um usuário';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Senha',
                      icon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira a senha';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: _submitForm,
                          child: const Text(
                            'Criar conta',
                            style: TextStyle(
                              color: cinzak90,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        _isLoading
                            ? const CircularProgressIndicator()
                            : ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    azul60,
                                  ),
                                ),
                                onPressed: _submitForm,
                                child: const Text(
                                  'Entrar',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
