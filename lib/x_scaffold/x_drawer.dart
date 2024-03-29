import 'package:flutter/material.dart';

class XDrawer extends StatelessWidget {
  const XDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(),
          Stack(
            children: [
              Container(
                height: 170.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://lastfm.freetls.fastly.net/i/u/ar0/ad05b6bd6e70b95f31b9cb3215a509fc.jpg",
                    ),
                  ),
                ),
              ),
              Container(
                height: 170.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.grey.withOpacity(0),
                      Colors.black.withOpacity(0.8),
                    ],
                    stops: const [0, 1],
                  ),
                ),
              ),
              const UserAccountsDrawerHeader(
                accountName: Text("Black Rover"),
                accountEmail: Text("VickeBlanka - Wizard"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://cdn.myanimelist.net/images/characters/16/466210.jpg",
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0x00000000),
                ),
              ),
            ],
          ),
          const ListTile(
            leading: Icon(Icons.library_music),
            title: Text("Biblioteca"),
          ),
          const ListTile(
            leading: Icon(Icons.folder_copy),
            title: Text("Pastas"),
          ),
          const ListTile(
            leading: Icon(Icons.queue_music),
            title: Text("Listas de Reprodução"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.timer),
            title: Text("Temporizador"),
          ),
          const ListTile(
            leading: Icon(Icons.equalizer),
            title: Text("Equalizador"),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configurações"),
          ),
          const ListTile(
            leading: Icon(Icons.help),
            title: Text("Suporte"),
          ),
        ],
      ),
    );
  }
}
