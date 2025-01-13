import 'package:flutter/material.dart';

class ModeSwitcherScreen extends StatefulWidget {
  const ModeSwitcherScreen({super.key});

  @override
  State<ModeSwitcherScreen> createState() => _ModeSwitcherScreenState();
}

class _ModeSwitcherScreenState extends State<ModeSwitcherScreen> {
  bool _greyOn = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // Changer la couleur du fond et de l'image selon l'état du Switch
    Color containerColor = _greyOn ? Color(0xFFEEBB22) : Color(0xFF1956E2); // Changer la couleur
    String imagePath = _greyOn ? "assets/images/image-2.jpg" : "assets/images/image-1.jpg"; // Changer l'image

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          color: containerColor, // Appliquer la couleur dynamique
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Container(
                height: screenHeight * 0.15,
                width: screenWidth * 0.15,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage(
                    "assets/images/iddo.png",
                  ),
                ),
              ),
              title: Text(
                "Iddo TAHOTA N'TCHA",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Développeur Web et Mobile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              trailing: Text(
                "#KITOKO",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  child: Text(
                    "2024",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 40.0,
                  ),
                  child: Transform.scale(
                    scale: 1.8, // Taille du Switch
                    child: Switch(
                      value: _greyOn,
                      onChanged: (v) => setState(() => _greyOn = v),
                      activeTrackColor: Colors.black26,
                      inactiveTrackColor: Colors.black26,
                      activeColor: Colors.white,
                      inactiveThumbColor: Colors.black26,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              height: screenHeight - 250.0,
              width: screenWidth - 20.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  image: AssetImage(imagePath), // Utiliser le chemin d'image dynamique
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
