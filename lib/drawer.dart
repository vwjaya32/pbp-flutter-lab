import 'package:flutter/material.dart';
import 'main.dart';
import 'package:untitled/page/form.dart';
import 'package:untitled/page/budget.dart';
import 'package:untitled/page/watchlist.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
            children: [
              const ListTile(
              ),
              ListTile(
                  title: const Text('counter_7'),
                  onTap: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const MyHomePage())
                    );
                  }
              ),
              ListTile(
                  title: const Text('Tambah Budget'),
                  onTap: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const FormPage())
                    );
                  }
              ),
              ListTile(
                  title: const Text('Show Data Budget'),
                  onTap: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const DataPage())
                    );
                  }
              ),
              ListTile(
                  title: const Text('mywatchlist'),
                  onTap: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const WatchListPage())
                    );
                  }
              ),
            ]
        )
    );
  }


}
