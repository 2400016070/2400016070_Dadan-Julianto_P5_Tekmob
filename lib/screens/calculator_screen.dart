import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  
  String _hasil = "0";

  void _hitung(String operasi) {
    setState(() {
      
      if (_controller1.text.isEmpty || _controller2.text.isEmpty) {
        _hasil = "Input tidak boleh kosong!";
        return;
      }

      double angka1 = double.parse(_controller1.text);
      double angka2 = double.parse(_controller2.text);
      double res = 0;

      
      if (operasi == '+') res = angka1 + angka2;
      if (operasi == '-') res = angka1 - angka2;
      if (operasi == 'x') res = angka1 * angka2;
      if (operasi == '÷') {
        
        if (angka2 == 0) {
          _hasil = "Tidak dapat membagi dengan nol!";
          return;
        }
        res = angka1 / angka2;
      }

      _hasil = "Hasil: $res";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kalkulator Sederhana'), backgroundColor: Colors.blueAccent),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Angka Pertama', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Angka Kedua', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () => _hitung('+'), child: const Text('+')),
                ElevatedButton(onPressed: () => _hitung('-'), child: const Text('-')),
                ElevatedButton(onPressed: () => _hitung('x'), child: const Text('x')),
                ElevatedButton(onPressed: () => _hitung('÷'), child: const Text('÷')),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              _hasil,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}