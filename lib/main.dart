import 'package:ehi_system/app.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = String.fromEnvironment('PROJECT_URL');
const supabaseKey = String.fromEnvironment('PROJECT_ANON_KEY');

void main() async {
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  runApp(const MyApp());
}
