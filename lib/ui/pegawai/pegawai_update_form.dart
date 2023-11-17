import 'package:flutter/material.dart';
import 'package:smartklinik/model/pegawai.dart';
import 'package:smartklinik/ui/pegawai/pegawai_detail.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;
  const PegawaiUpdateForm({super.key, required this.pegawai});

  @override
  State<PegawaiUpdateForm> createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPegawaiCtrl = TextEditingController();
  final _nipPegawaiCtrl = TextEditingController();
  final _ttlPegawaiCtrl = TextEditingController();
  final _emailPegawaiCtrl = TextEditingController();
  final _noTelpPegawaiCtrl = TextEditingController();
  final _passwordPegawaiCtrl = TextEditingController();

  @override
  void initSate() {
    super.initState();
    setState(() {
      _namaPegawaiCtrl.text = widget.pegawai.namaPegawai;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah pegawai'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNipPegawai("NIP", _nipPegawaiCtrl),
              SizedBox(
                height: 20,
              ),
              _fieldNamaPegawai("Nama Pegawai", _namaPegawaiCtrl),
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
        child: const Text("Simpan Perubahan"));
  }
}
