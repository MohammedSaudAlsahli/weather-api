import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseInitializer {
  final supabaseClient = Supabase.instance.client;
  static supabaseInitialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Supabase.initialize(
      url: 'https://zwfsmaxbkqwpplwtgzla.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp3ZnNtYXhia3F3cHBsd3RnemxhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0NzI0ODgsImV4cCI6MjAwOTA0ODQ4OH0.p7mIcNQC4pRyh6u_Wss9bISXEnD0TrRR5Af896-sFRk',
    );
  }
}
