import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupaBaseAuth extends StatefulWidget {
  const SupaBaseAuth({super.key});

  @override
  State<SupaBaseAuth> createState() => _SupaBaseAuthState();
}

class _SupaBaseAuthState extends State<SupaBaseAuth> {
  String? _userId;
  final supabaseAuth = Supabase.instance.client;

  @override
  void initState() {
    super.initState();
    supabaseAuth.auth.onAuthStateChange.listen((data) {
      setState(() {
        _userId = data.session?.user.id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
