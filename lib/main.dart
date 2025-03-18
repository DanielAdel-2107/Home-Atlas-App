import 'package:flutter/material.dart';
import 'package:rental_app/app/my_app.dart';
import 'package:rental_app/core/di/dependancy_injection.dart' as di;
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://aerzztismmnxnzulzsgv.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlcnp6dGlzbW1ueG56dWx6c2d2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDIyNTY4MDEsImV4cCI6MjA1NzgzMjgwMX0.KMQuK--7l4YOEhjaIALKKH0TeB36RGOuKAbq_-6SYu4",
  );
  di.setupDI();
  runApp(const MyApp());
}
