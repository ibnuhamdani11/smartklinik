import 'package:flutter/material.dart';
import 'package:smartklinik/model/pasien.dart';
import 'package:smartklinik/ui/pasien/pasien_page.dart';
import 'package:smartklinik/ui/pasien/pasien_update_form.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;
  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pasien"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Nama Pasien : ${widget.pasien.namaPasien} ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "NIP Pasien : ${widget.pasien.nomorRm} ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Tanggal Lahir Pasien : ${widget.pasien.ttlPasien} ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "No Telp Pasien : ${widget.pasien.noTelpPasien} ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Alamat Pasien : ${widget.pasien.alamatPasien} ",
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
                builder: (context) => PasienUpdateForm(pasien: widget.pasien)));
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
                      MaterialPageRoute(builder: (context) => PasienPage()));
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
