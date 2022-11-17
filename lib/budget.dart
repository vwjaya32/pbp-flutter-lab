import 'package:flutter/material.dart';
import 'main.dart';
import 'form.dart';
import 'drawer.dart';
import 'budget.dart';

class item {
  String judul;
  int nominal;
  String? jenis;

  item({
    required this.judul,
    required this.nominal,
    required this.jenis,
  });

  get getJudul => judul;
  get getNominal => nominal;
  get getJenis => jenis;
}

List<item> database = [];

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Budget Data'),
        ),
        drawer: CustomDrawer(),
        body: Container(
            child: Column(
                children: [
                  ListView.builder(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      shrinkWrap: true,
                      itemCount: database.length,
                      itemBuilder: (context, index) {
                        return Card(
                            child: ListTile(
                              title: Text(database[index].getJudul),
                              subtitle: Text(database[index].getNominal.toString()),
                              trailing: Text(database[index].getJenis),
                            )
                        );
                      }
                  )
                ]
            )
        )
    );
  }
}