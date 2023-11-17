import 'package:flutter/material.dart';
import 'package:smartklinik/model/pegawai.dart';
import 'package:smartklinik/ui/pegawai/pegawai_form.dart';
import 'package:smartklinik/ui/pegawai/pegawai_item.dart';
import 'package:smartklinik/widget/sidebar.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PegawaiItem(
            pegawai: Pegawai(
                nip: "123",
                namaPegawai: "Ian Bagus",
                noTelpPegawai: "0838238484",
                emailPegawai: "test@gmail.com",
                ttlPegawai: "11/11/1990",
                passwordPegawai: "2134"),
          ),
          PegawaiItem(
            pegawai: Pegawai(
                nip: "123",
                namaPegawai: "Bagus Ian",
                noTelpPegawai: "0838238484",
                emailPegawai: "test@gmail.com",
                ttlPegawai: "11/12/1991",
                passwordPegawai: "2134"),
          ),
          PegawaiItem(
            pegawai: Pegawai(
                nip: "123",
                namaPegawai: "Julianto",
                noTelpPegawai: "0838238484",
                emailPegawai: "test@gmail.com",
                ttlPegawai: "12/12/1992",
                passwordPegawai: "2134"),
          ),
          PegawaiItem(
            pegawai: Pegawai(
                nip: "123",
                namaPegawai: "Koko Sulis",
                noTelpPegawai: "0838238484",
                emailPegawai: "test@gmail.com",
                ttlPegawai: "11/01/1997",
                passwordPegawai: "2134"),
          ),
        ],
      ),
    );
  }
}
