import 'package:flutter/material.dart';

class BerandaPanel extends StatelessWidget {
  const BerandaPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BackgroundDashboard(),
        _InformasiPengguna(),
        Card(
          margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Berita',
                    style: TextStyle(fontSize: 19),
                  ),
                  _ListBerita(),
                  Wrap(
                    children: [
                      _TombolMenu(
                        gambar: 'assets/desktop.png',
                      ),
                      _TombolMenu(
                        gambar: 'assets/seo-report.png',
                      ),
                      _TombolMenu(
                        gambar: 'assets/gps.png',
                      ),
                      _TombolMenu(
                        gambar: 'assets/team.png',
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
      padding: EdgeInsets.all(13),
      margin: EdgeInsets.all(11),
      child: Image.asset(
        gambar,
        width: 40,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xdadadaff),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(33, 112, 112, 112),
              blurRadius: 2,
              spreadRadius: 2,
              offset: Offset(2, 2),
            )
          ]),
    );
  }
}

class _ListBerita extends StatelessWidget {
  const _ListBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _ItemBerita(
            assetgambar: 'assets/berita1.jpg',
          ),
          _ItemBerita(
            assetgambar: 'assets/berita2.jpg',
          ),
          _ItemBerita(
            assetgambar: 'assets/berita3.jpg',
          ),
        ],
      ),
    );
  }
}

class _ItemBerita extends StatelessWidget {
  final String assetgambar;
  const _ItemBerita({super.key, this.assetgambar = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          assetgambar,
          width: 250,
          height: 130,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _InformasiPengguna extends StatelessWidget {
  const _InformasiPengguna({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 60, 15, 25),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/user.png',
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi, Beli',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  'belimulyadi@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/bell.png',
            width: 30,
          )
        ],
      ),
    );
  }
}

class _BackgroundDashboard extends StatelessWidget {
  const _BackgroundDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/background.jpg',
      height: 300,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
