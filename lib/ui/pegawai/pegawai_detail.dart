import 'package:flutter/material.dart';
import 'package:smartklinik/model/pegawai.dart';
import 'package:smartklinik/ui/pegawai/pegawai_page.dart';
import 'package:smartklinik/ui/pegawai/pegawai_update_form.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;
  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pegawai"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Nama Pegawai : ${widget.pegawai.namaPegawai} ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "NIP Pegawai : ${widget.pegawai.nip} ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Email Pegawai : ${widget.pegawai.emailPegawai} ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "No Telp Pegawai : ${widget.pegawai.noTelpPegawai} ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Tanggal Lahir Pegawai : ${widget.pegawai.ttlPegawai} ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Password Pegawai : ${widget.pegawai.passwordPegawai} ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [_tombolUbah(), _tombolHapus()],
          )
        ],
      ),
    );
  }

  // tombol ubah
  _tombolUbah() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    PegawaiUpdateForm(pegawai: widget.pegawai)));
      },
      child: const Text('Ubah'),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
    );
  }

// tombol hapus
  _tombolHapus() {
    return ElevatedButton(
      onPressed: () {
        AlertDialog alertDialog = AlertDialog(
          content: Text("Yakin ingin menghapus data ini?"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => PegawaiPage()));
                },
                child: Text("YA"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Tidak"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green))
          ],
        );
        showDialog(context: context, builder: (context) => alertDialog);
      },
      child: const Text('Hapus'),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
    );
  }
}
