import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Movies"),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      drawer:  Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children:  [
             const DrawerHeader(child: Material()),
             const ListTile( 
              title: Text("Péliculas"),
              trailing: Icon(Icons.local_movies),
             ),
             const Divider(
              height: 5.0,
             ),
              const ListTile( 
              title: Text("Televisión"),
              trailing: Icon(Icons.live_tv),
             ),
               const Divider(
              height: 5.0,
             ),
              ListTile( 
              title: const Text("Cerrar"),
              trailing: const Icon(Icons.close),
              onTap:() => Navigator.of(context).pop(),
             ),
            ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: _getFooterItems()),
    );
  
  }
   List<BottomNavigationBarItem> _getFooterItems(){
       return [
        const BottomNavigationBarItem(icon: Icon(Icons.thumb_up), tooltip: "Populares" , label: "Populares"),
              const BottomNavigationBarItem(icon: Icon(Icons.update), tooltip: "Próximamente", label:"Próximamente" ),
                    const BottomNavigationBarItem(icon: Icon(Icons.star), tooltip: "Mejor Valoradas", label: "Mejor Valoradas"),
       ];
   }
}
