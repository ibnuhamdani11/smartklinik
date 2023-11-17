import 'package:flutter/material.dart';
import 'package:smartklinik/model/pasien.dart';
import 'package:smartklinik/ui/pasien/pasien_form.dart';
import 'package:smartklinik/ui/pasien/pasien_item.dart';
import 'package:smartklinik/widget/sidebar.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItem(
            pasien: Pasien(
                nomorRm: "123",
                namaPasien: "Joko",
                noTelpPasien: "0838238484",
                ttlPasien: "18/11/1990",
                alamatPasien: "Jl. Harapan Baru"),
          ),
          PasienItem(
            pasien: Pasien(
                nomorRm: "124",
                namaPasien: "Joki",
                noTelpPasien: "0838238484",
                ttlPasien: "22/09/2000",
                alamatPasien: "Jl. Harapan Mulia"),
          ),
          PasienItem(
            pasien: Pasien(
                nomorRm: "125",
                namaPasien: "Jojo",
                noTelpPasien: "0838238484",
                ttlPasien: "23/01/2000",
                alamatPasien: "Jl. Mimpi Indah"),
          ),
          PasienItem(
            pasien: Pasien(
                nomorRm: "126",
                namaPasien: "Jamal",
                noTelpPasien: "0838238484",
                ttlPasien: "01/01/2002",
                alamatPasien: "Jl. Melati"),
          ),
        ],
      ),
    );
  }
}
