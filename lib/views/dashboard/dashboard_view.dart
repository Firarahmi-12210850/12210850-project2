import 'package:apk1/providers/dashboard_provider.dart';
import 'package:apk1/views/dashboard/berita_panel.dart';
import 'package:apk1/views/dashboard/pengaturan_panel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:apk1/views/dashboard/beranda_panel.dart';
import 'package:provider/provider.dart';

class Dashboardview extends StatelessWidget {
  const Dashboardview({super.key});

  @override
  Widget build(BuildContext context) {
    final panels = [
      BerandaPanel(),
      BeritaPanel(),
      PengaturanPanel(),
    ];
    return Consumer<DashboardProvider>(builder: (context, Prov, W) {
      return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              Prov.ubahTab(value);
              print("tab $value");
            },
            currentIndex: Prov.tabaktif,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.house), label: 'Beranda'),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.newspaper), label: 'Berita'),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.gear), label: 'pengaturan'),
            ],
          ),
          body: panels[Prov.tabaktif]);
    });
  }
}

class BerandaPanel extends StatelessWidget {
  const BerandaPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BackgraoudDashboard(),
        InformasiPengguna(),
        Card(
          margin: EdgeInsets.fromLTRB(0, 160, 0, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Berita',
                    style: TextStyle(fontSize: 19),
                  ),
                  _listberita(),
                  Wrap(
                    children: [
                      _TombolMenu(
                        gambar: 'assets/icon1.png',
                      ),
                      _TombolMenu(
                        gambar: 'assets/icon2.png',
                      ),
                      _TombolMenu(
                        gambar: 'assets/icon3.png',
                      ),
                      _TombolMenu(
                        gambar: 'assets/icon4.png',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _TombolMenu extends StatelessWidget {
  final String gambar;
  const _TombolMenu({super.key, this.gambar = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(6),
      child: Image.asset(
        gambar,
        width: 40,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 199, 249, 183),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 115, 209, 0),
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(3, 3))
          ]),
    );
  }
}

class _listberita extends StatelessWidget {
  const _listberita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Itemberita(
            assetgambar: 'assets/berita1.jpg',
          ),
          Itemberita(
            assetgambar: 'assets/berita2.jpg',
          ),
          Itemberita(
            assetgambar: 'assets/berita3.jpg',
          ),
          Itemberita(
            assetgambar: 'assets/berita4.jpg',
          ),
        ],
      ),
    );
  }
}

class Itemberita extends StatelessWidget {
  final String assetgambar;
  const Itemberita({super.key, this.assetgambar = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        assetgambar,
        width: 250,
        height: 130,
        fit: BoxFit.cover,
      ),
    );
  }
}

class Navigatorbawah extends StatelessWidget {
  const Navigatorbawah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house), label: 'Beranda'),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.newspaper), label: 'Berita'),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gear), label: 'pengaturan'),
      ],
    );
  }
}

class InformasiPengguna extends StatelessWidget {
  const InformasiPengguna({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/girl.png',
              height: 60,
              width: 60,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi,Fira',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'firarahmi3@gmail.com',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/love.png',
            width: 40,
          ),
        ],
      ),
    );
  }
}

class _BackgraoudDashboard extends StatelessWidget {
  const _BackgraoudDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/background.png',
      height: 300,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
