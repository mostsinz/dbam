import 'package:d_bam/constants.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class NTE extends pw.StatelessWidget {
  final String oldNTE, newNTE, labelNTE;

  final myFontBold = PdfGoogleFonts.poppinsBold();
  NTE({
    required this.oldNTE,
    required this.newNTE,
    required this.labelNTE,
  });
  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      children: [
        pw.Row(
          children: [
            pw.Container(
              width: 80,
              child: pw.Text(
                labelNTE,
                style: pw.TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
            pw.Text(
              ' : ',
            ),
            pw.SizedBox(
              width: kPadding / 2,
            ),
            pw.Container(
              width: 200,
              child: pw.Center(
                child: pw.Text(
                  oldNTE,
                  style: pw.TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            pw.SizedBox(width: kPadding / 2),
            pw.Icon(
              pw.IconData(0xe5df),
            ),
            pw.SizedBox(width: kPadding / 2),
            pw.Container(
              width: 200,
              child: pw.Center(
                child: pw.Text(
                  newNTE,
                  style: pw.TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
