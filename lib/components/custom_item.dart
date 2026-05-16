import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.price,
    this.badgeText,
    this.isSoldOut = false,
  });

  final String title;
  final String description;
  final String imagePath;
  final String price;
  final String? badgeText;
  final bool isSoldOut;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: Colors.grey[900],
          elevation: 10,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          shadowColor: isSoldOut ? Colors.black : Colors.cyanAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Opacity(
            opacity: isSoldOut ? 0.5 : 1.0,
            child: ListTile(
              isThreeLine: true,
              contentPadding: const EdgeInsets.all(15),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath,
                  width: 60,
                  height: 60,
                  fit: BoxFit.contain,
                ),
              ),
              trailing: SizedBox(
                width: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite_border, color: Colors.pinkAccent, size: 20),
                    const SizedBox(width: 8),
                    Icon(Icons.add_shopping_cart_rounded, color: Colors.cyanAccent, size: 20),
                  ],
                ),
              ),
              title: Text(
                title,
                style: GoogleFonts.pressStart2p(
                  color: Colors.cyanAccent,
                  fontSize: 12,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: GoogleFonts.orbitron(color: Colors.white70, fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$$price',
                    style: GoogleFonts.orbitron(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // RARE Badge
        if (badgeText != null && !isSoldOut)
          Positioned(
            top: 5,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.pinkAccent.withOpacity(0.5), blurRadius: 10, spreadRadius: 2),
                ],
              ),
              child: Text(
                badgeText!,
                style: GoogleFonts.pressStart2p(color: Colors.white, fontSize: 8),
              ),
            ),
          ),
        // SOLD OUT Label
        if (isSoldOut)
          Positioned.fill(
            child: Center(
              child: Transform.rotate(
                angle: -0.2,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.redAccent, width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'SOLD OUT',
                    style: GoogleFonts.pressStart2p(color: Colors.redAccent, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
