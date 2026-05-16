import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 50, left: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent.withOpacity(0.1),
                    border: const Border(
                      bottom: BorderSide(color: Colors.cyanAccent, width: 2),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(AppImages.glowby),
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Masa Anabtawi',
                        style: GoogleFonts.pressStart2p(
                          color: Colors.cyanAccent,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '202311619',
                        style: GoogleFonts.pressStart2p(
                          color: Colors.cyanAccent,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'App Owner',
                        style: GoogleFonts.orbitron(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home_rounded,
                    color: Colors.cyanAccent,
                  ),
                  title: Text(
                    'Home',
                    style: GoogleFonts.orbitron(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                const Divider(color: Colors.white10),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, bottom: 5),
                  child: Text(
                    'CATEGORIES',
                    style: GoogleFonts.pressStart2p(
                      color: Colors.pinkAccent,
                      fontSize: 8,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.videogame_asset_rounded,
                    color: Colors.pinkAccent,
                  ),
                  title: Text(
                    'Consoles',
                    style: GoogleFonts.orbitron(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.audiotrack_rounded,
                    color: Colors.pinkAccent,
                  ),
                  title: Text(
                    'Music Players',
                    style: GoogleFonts.orbitron(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.pinkAccent,
                  ),
                  title: Text(
                    'Photography',
                    style: GoogleFonts.orbitron(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                const Divider(color: Colors.white10),
                ListTile(
                  leading: const Icon(
                    Icons.settings_rounded,
                    color: Colors.white70,
                  ),
                  title: Text(
                    'Settings',
                    style: GoogleFonts.orbitron(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.contact_support_rounded,
                    color: Colors.white70,
                  ),
                  title: Text(
                    'Help Center',
                    style: GoogleFonts.orbitron(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.email_rounded,
                    color: Colors.white70,
                  ),
                  title: Text(
                    'Contact Us',
                    style: GoogleFonts.orbitron(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout_rounded,
                    color: Colors.redAccent,
                  ),
                  title: Text(
                    'Logout',
                    style: GoogleFonts.orbitron(
                      color: Colors.redAccent,
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),

          // Assignment Checklist at the bottom
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'This application is done for this assignment and it does include these:',
                  style: GoogleFonts.orbitron(
                    color: Colors.cyanAccent,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '✔️ MaterialApp\n'
                  '✔️ Scaffold\n'
                  '✔️ AppBar\n'
                  '✔️ Row & Column\n'
                  '✔️ Container\n'
                  '✔️ Images\n'
                  '✔️ Drawer & ListView\n'
                  '✔️ Good UI Design',
                  style: GoogleFonts.orbitron(
                    color: Colors.white70,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
