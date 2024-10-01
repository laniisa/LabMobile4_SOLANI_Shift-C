import 'package:flutter/material.dart';
import 'package:tokokita/model/produk.dart';
import 'package:tokokita/ui/produk_form.dart';

class ProdukDetail extends StatelessWidget {
  final Produk? produk;

  const ProdukDetail({Key? key, this.produk}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk Solani'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Kode : ${produk!.kodeProduk}",
                  style: const TextStyle(fontSize: 20.0)),
              const SizedBox(height: 8),
              Text("Nama : ${produk!.namaProduk}",
                  style: const TextStyle(fontSize: 18.0)),
              const SizedBox(height: 8),
              Text("Harga : Rp. ${produk!.hargaProduk.toString()}",
                  style: const TextStyle(fontSize: 18.0)),
              const SizedBox(height: 20),
              _tombolHapusEdit(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tombolHapusEdit(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          child: const Text("EDIT"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProdukForm(produk: produk!)),
            );
          },
        ),
        const SizedBox(width: 16),
        OutlinedButton(
          child: const Text("DELETE"),
          onPressed: () => confirmHapus(context),
        ),
      ],
    );
  }

  void confirmHapus(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      content: const Text("Yakin ingin menghapus data ini?"),
      actions: [
        OutlinedButton(
          child: const Text("Ya"),
          onPressed: () {
            // Tambahkan logika untuk menghapus produk
            Navigator.pop(context);
          },
        ),
        OutlinedButton(
          child: const Text("Batal"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );

    showDialog(
      builder: (context) => alertDialog,
      context: context,
    );
  }
}
