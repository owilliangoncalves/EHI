import 'package:ehi_system/app.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const _supabaseUrl = String.fromEnvironment('PROJECT_URL');
const _supabaseKey = String.fromEnvironment('PROJECT_ANON_KEY');

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: _supabaseUrl, anonKey: _supabaseKey);
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;
