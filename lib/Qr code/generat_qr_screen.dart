import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:gap/gap.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRScreen extends StatefulWidget {
  
  @override
  // ignore: library_private_types_in_public_api
  _GenerateQRScreenState createState() => _GenerateQRScreenState();
}

class _GenerateQRScreenState extends State<GenerateQRScreen> {
  final TextEditingController _controller = TextEditingController();
  QrImageView? _qrImageView;


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Generate QR Code")),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Enter content",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Gap(5),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              hintText: "Content",
              labelText: "Content",
            ),
            controller: _controller,
          ),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
            String bookingData = '''
        
''';

  setState(() {
    _qrImageView = QrImageView(
      data: bookingData,
      version: QrVersions.auto,
      size: 300,
    );
  });
},
                icon: const Icon(Icons.qr_code),
                label: const Text('Generate'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 117, 62, 251),
                ),
              ),
            ],
          ),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_qrImageView != null)
                Container(color: Colors.white, child: _qrImageView!),
            ],
          ),
        ],
      ),
    );
  }
}
