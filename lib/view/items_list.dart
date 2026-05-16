import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/custom_item.dart';
import '../utils/app_titles.dart';
import '../utils/app_descriptions.dart';
import '../utils/app_images.dart';
import '../utils/app_prices.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Category Chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              children: [
                _buildChip('All Items', true),
                _buildChip('Consoles', false),
                _buildChip('Audio', false),
                _buildChip('Video', false),
                _buildChip('Cameras', false),
              ],
            ),
          ),
          CustomItem(
            title: AppTitles.gameboy,
            description: AppDescriptions.gameboyDesc,
            imagePath: AppImages.gameboy,
            price: AppPrices.gameboy,
            badgeText: 'RARE',
          ),
          CustomItem(
            title: AppTitles.nes,
            description: AppDescriptions.nesDesc,
            imagePath: AppImages.nes,
            price: AppPrices.nes,
            badgeText: 'CLASSIC',
          ),
          CustomItem(
            title: AppTitles.ps1,
            description: AppDescriptions.ps1Desc,
            imagePath: AppImages.ps1,
            price: AppPrices.ps1,
          ),
          CustomItem(
            title: AppTitles.dvd,
            description: AppDescriptions.dvdDesc,
            imagePath: AppImages.dvd,
            price: AppPrices.dvd,
            isSoldOut: true,
          ),
          CustomItem(
            title: AppTitles.vhs,
            description: AppDescriptions.vhsDesc,
            imagePath: AppImages.vhs,
            price: AppPrices.vhs,
          ),
          CustomItem(
            title: AppTitles.walkman,
            description: AppDescriptions.walkmanDesc,
            imagePath: AppImages.walkman,
            price: AppPrices.walkman,
          ),
          CustomItem(
            title: AppTitles.polaroid,
            description: AppDescriptions.polaroidDesc,
            imagePath: AppImages.polaroid,
            price: AppPrices.polaroid,
          ),
          CustomItem(
            title: AppTitles.handycam,
            description: AppDescriptions.handycamDesc,
            imagePath: AppImages.handycam,
            price: AppPrices.handycam,
          ),
          CustomItem(
            title: AppTitles.cds,
            description: AppDescriptions.cdsDesc,
            imagePath: AppImages.cds,
            price: AppPrices.cds,
          ),
          CustomItem(
            title: AppTitles.radio,
            description: AppDescriptions.radioDesc,
            imagePath: AppImages.radio,
            price: AppPrices.radio,
          ),
          const SizedBox(height: 30),
          const Divider(color: Colors.cyanAccent, indent: 80, endIndent: 80),
          const SizedBox(height: 20),
          // Centered Rocket section
          Center(
            child: Column(
              children: [
                const Icon(
                  Icons.rocket_launch_rounded,
                  color: Colors.pinkAccent,
                  size: 80,
                ),
                const SizedBox(height: 10),
                Text(
                  "You've reached the end of the collection!",
                  style: GoogleFonts.orbitron(
                    color: Colors.cyanAccent,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                // Sparkles row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.auto_awesome_rounded, color: Colors.amberAccent, size: 20),
                    SizedBox(width: 10),
                    Icon(Icons.stars_rounded, color: Colors.amberAccent, size: 30),
                    SizedBox(width: 10),
                    Icon(Icons.auto_awesome_rounded, color: Colors.amberAccent, size: 20),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildChip(String label, bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? Colors.cyanAccent.withOpacity(0.2) : Colors.grey[850],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isActive ? Colors.cyanAccent : Colors.white10,
          width: 1,
        ),
      ),
      child: Text(
        label,
        style: GoogleFonts.orbitron(
          color: isActive ? Colors.cyanAccent : Colors.white60,
          fontSize: 10,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
