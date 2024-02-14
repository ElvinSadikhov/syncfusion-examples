import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'model/model.dart';
import 'samples/pdf_viewer/pdf_viewer_custom_toolbar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await updateControlItems();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomToolbarPdfViewer(
        pdfLink: "1https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf",
        onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
          print("${details}");
        },
        isMobileResolution: true,
      )
    )
  );
}
