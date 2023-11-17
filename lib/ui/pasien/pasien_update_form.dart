import 'package:flutter/material.dart';
import 'package:smartklinik/model/pasien.dart';
import 'package:smartklinik/ui/pasien/pasien_detail.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;
  const PasienUpdateForm({super.key, required this.pasien});

  @override
  State<PasienUpdateForm> createState() => _PasienUpdateFormState();
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPasienCtrl = TextEditingController();
  final _nomorRmPasienCtrl = TextEditingController();
  final _ttlPasienCtrl = TextEditingController();
  final _noTelpPasienCtrl = TextEditingController();
  final _alamatPasienCtrl = TextEditingController();

  @override
  void initSate() {
    super.initState();
    setState(() {
      _namaPasienCtrl.text = widget.pasien.namaPasien;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah pasien'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPasien("Nama Pasien", _namaPasienCtrl),
              SizedBox(
                height: 20,
              ),
              _fieldTtlPasien("Nama Pasien", _namaPasienCtrl),
              SizedBox(
                height: 20,
              ),
              _fieldNomorRmPasien("Nomor RM", _nomorRmPasienCtrl),
              SizedBox(
                height: 20,
              ),
              _fieldNoTelpPasien("Nomor Telp Pasien", _noTelpPasienCtrl),
              SizedBox(
                height: 20,
              ),
              _fieldAlamatPasien("Alamat Pasien", _alamatPasienCtrl),
              SizedBox(
                height: 20,
              ),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  // textfield
  _fieldNamaPasien(String label, TextEditingController Ctrl) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: Ctrl,
    );
  }

  // textfield
  _fieldNomorRmPasien(String label, TextEditingController Ctrl) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: Ctrl,
    );
  }

  // textfield
  _fieldTtlPasien(String label, TextEditingController Ctrl) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: Ctrl,
    );
  }

  // textfield
  _fieldNoTelpPasien(String label, TextEditingController Ctrl) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: Ctrl,
    );
  }

  // textfield
  _fieldAlamatPasien(String label, TextEditingController Ctrl) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: Ctrl,
    );
  }

  // tombol simpan
  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pasien pasien = Pasien(
            nomorRm: _nomorRmPasienCtrl.text,
            namaPasien: _namaPasienCtrl.text,
            ttlPasien: _ttlPasienCtrl.text,
            noTelpPasien: _noTelpPasienCtrl.text,
            alamatPasien: _alamatPasienCtrl.text,
          );
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: pasien)));
        },
        child: const Text("Simpan Perubahan"));
  }
}
