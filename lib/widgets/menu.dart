import 'package:rafika_aplikasi/widgets/header.dart';
import 'package:rafika_aplikasi/pages/explore.dart';
import 'package:rafika_aplikasi/pages/mail.dart';
import 'package:rafika_aplikasi/pages/card.dart';
import 'package:rafika_aplikasi/pages/favorite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int activetindex = 0;

  //variabel baru
  List pages = [
    const Explore(),
    const Mail(),
    Cards(),
    Favorite(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[activetindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: activetindex,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (index) {
            //mengatur statenya = memberi tahu ada perubahan pada variabel aktif sesuai indeksnya
            setState(() {
              activetindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail_outlined), label: "Mail"),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), label: "Card"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
          ]),
    );
  }
}