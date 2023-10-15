import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://whozpltaaiybhewhwqrv.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Indob3pwbHRhYWl5Ymhld2h3cXJ2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTY3Nzg4MDQsImV4cCI6MjAxMjM1NDgwNH0.kqj83AJ0PnXmCjaN5O11DnpLlVz7kHq89NB0SRQILJ0';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
