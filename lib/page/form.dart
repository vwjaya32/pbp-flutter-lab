import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/page/form.dart';
import 'package:untitled/drawer.dart';
import 'package:untitled/page/budget.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final _judulController = TextEditingController();
  final _nominalController = TextEditingController();
  final _jenisController = TextEditingController();

  String _judul = "";
  int nominal = 0;
  String? jenis;
  List<String> listJenis = ['Pemasukan', 'Pengeluaran'];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      drawer: CustomDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _judulController,
                    decoration: InputDecoration(
                      hintText: "Judul",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value){
                      setState(() {
                        _judul = value!;
                      });
                    },
                    onSaved: (String? value){
                      setState((){
                        _judul = value!;
                      });
                    },
                    validator: (String? value){
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _nominalController,
                    decoration: InputDecoration(
                      hintText: "Nominal",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value){
                      setState(() {
                        nominal = value!.isEmpty ? 0 : int.parse(value);
                      });
                    },
                    onSaved: (String? value){
                      setState((){
                        nominal = value!.isEmpty ? 0 : int.parse(value);
                      });
                    },
                    validator: (String? value){
                      if (value == null || value.isEmpty) {
                        return 'Nominal tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                      hint: const Text ('Pilih Jenis'),
                      items: listJenis.map((String items){
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? input){
                      setState(() {
                        _jenisController.text = input!;
                      });
                    },
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: (){
                    if (_formKey.currentState!.validate()){
                      setState((){
                        database.add(item(
                          judul: _judul,
                          nominal: nominal,
                          jenis: _jenisController.text,
                        ));

                        _judulController.clear();
                        _nominalController.clear();
                        _jenisController.clearComposing();
                      });
                    }
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ]
            )
          )
        )
      )
    );
  }
}