import 'package:flutter/material.dart';
import 'package:smartklinik/model/pegawai.dart';
import 'package:smartklinik/ui/pegawai/pegawai_detail.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({super.key});

  @override
  State<PegawaiForm> createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPegawaiCtrl = TextEditingController();
  final _nipPegawaiCtrl = TextEditingController();
  final _ttlPegawaiCtrl = TextEditingController();
  final _emailPegawaiCtrl = TextEditingController();
  final _noTelpPegawaiCtrl = TextEditingController();
  final _passwordPegawaiCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Pegawai"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPegawai("Nama Pegawai", _namaPegawaiCtrl),
              SizedBox(
                height: 20,
              ),
              _fieldNipPegawai("NIP Pegawai", _nipPegawaiCtrl),
              SizedBox(
                height: 20,
              ),
              _fieldTtlPegawai("Tanggal Lahir Pegawai", _ttlPegawaiCtrl),
              SizedBox(
                height: 20,
              ),
              _fieldEmailPegawai("Email Pegawai", _emailPegawaiCtrl),
              SizedBox(
                height: 20,
              ),
              _fieldNoTelpPegawai("No Telp Pegawai", _noTelpPegawaiCtrl),
              SizedBox(
                height: 20,
              ),
              _fieldPasswordPegawai("Password Pegawai", _passwordPegawaiCtrl),
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
  _fieldNamaPegawai(String label, TextEditingController Ctrl) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: Ctrl,
    );
  }

  // textfield
  _fieldNipPegawai(String label, TextEditingController Ctrl) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: Ctrl,
    );
  }

  // textfield
  _fieldTtlPegawai(String label, TextEditingController Ctrl) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: Ctrl,
    );
  }

  // textfield
  _fieldEmailPegawai(String label, TextEditingController Ctrl) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: Ctrl,
    );
  }

  // textfield
  _fieldNoTelpPegawai(String label, TextEditingController Ctrl) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: Ctrl,
    );
  }

  // textfield
  _fieldPasswordPegawai(String label, TextEditingController Ctrl) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: Ctrl,
    );
  }

  // tombol simpan
  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pegawai pegawai = Pegawai(
            nip: _nipPegawaiCtrl.text,
            namaPegawai: _namaPegawaiCtrl.text,
            ttlPegawai: _ttlPegawaiCtrl.text,
            noTelpPegawai: _noTelpPegawaiCtrl.text,
            emailPegawai: _emailPegawaiCtrl.text,
            passwordPegawai: _passwordPegawaiCtrl.text,
          );
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: pegawai)));
        },
        child: const Text("Simpan"));
  }
}
