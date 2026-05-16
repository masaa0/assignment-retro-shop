import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/custom_drawer.dart';
import 'items_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          'Retro Shop',
          style: GoogleFonts.pressStart2p(color: Colors.cyanAccent, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        iconTheme: const IconThemeData(color: Colors.cyanAccent),
        elevation: 10,
        shadowColor: Colors.cyanAccent.withOpacity(0.5),
        actions: [
          const Icon(Icons.search_rounded),
          const SizedBox(width: 15),
          const Icon(Icons.shopping_cart_rounded),
          const SizedBox(width: 15),
        ],
      ),
      drawer: const CustomDrawer(),
      body: const ItemsList(),
    );
  }
}
