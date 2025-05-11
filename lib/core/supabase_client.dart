import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'supabase_client.g.dart';

@Riverpod(keepAlive: true)
SupabaseClient supabaseClient(SupabaseClientRef ref){
  return Supabase.instance.client;
}