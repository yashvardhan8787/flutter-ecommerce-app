import 'package:ecommerce_app/providers/add_to_cart_provider.dart';
import 'package:ecommerce_app/providers/favorite.dart';
import 'package:ecommerce_app/screens/nav_bar_screeen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      // for add to cart
      ChangeNotifierProvider(create: (_)=>CartProvider()),
      // for favorite
      ChangeNotifierProvider(create: (_)=>FavoriteProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: const BottomNavBar(),
    ),
  );
}


