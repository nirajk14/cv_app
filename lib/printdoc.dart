import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_document/open_document.dart';

//functions for pdf printing

class pdfservice {
  static Future<Uint8List> pdfgen(String name, String contact, String email, String wep) {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(child: pw.Text("hello_world"));
        },
      ),
    );
    return pdf.save();
  }
}
