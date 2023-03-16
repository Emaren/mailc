import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TimeSheets extends StatefulWidget {
  const TimeSheets({super.key, required this.title});

  final String title;

  @override
  State<TimeSheets> createState() => _TimeSheetsState();
}

class _TimeSheetsState extends State<TimeSheets> {
  final controllerTo = TextEditingController();
  final controllerSubject = TextEditingController();
  final march9 = TextEditingController();
  final march10 = TextEditingController();
  final march11 = TextEditingController();
  final march12 = TextEditingController();
  final march13 = TextEditingController();
  final march14 = TextEditingController();
  final march15 = TextEditingController();
  final march16 = TextEditingController();
  final march17 = TextEditingController();
  final march18 = TextEditingController();
  final march19 = TextEditingController();
  final march20 = TextEditingController();
  final march21 = TextEditingController();
  final march22 = TextEditingController();
  final march23 = TextEditingController();
  final controllerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
    // backgroundColor: Color.fromARGB(210, 138, 126, 126),
      // appBar: AppBar(
        // title: Text(widget.title),
        // centerTitle: true,
      // ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),        
        child: Column(
          children: [
            buildTextField(title: 'March 9', controller: march9),
            const SizedBox(height: 16),
            buildTextField(title: 'March 10', controller: march10),
            const SizedBox(height: 16),
            buildTextField(title: 'March 11', controller: march11),
            const SizedBox(height: 16),
            buildTextField(title: 'March 12', controller: march12),
            const SizedBox(height: 16),
            buildTextField(title: 'March 13', controller: march13),
            const SizedBox(height: 16),
            buildTextField(title: 'March 14', controller: march14),
            const SizedBox(height: 16),
            buildTextField(title: 'March 15', controller: march15),
            const SizedBox(height: 16),
            buildTextField(title: 'March 16', controller: march16),
            const SizedBox(height: 16),
            buildTextField(title: 'March 17', controller: march17),
            const SizedBox(height: 16),
            buildTextField(title: 'March 18', controller: march18),
            const SizedBox(height: 16),
            buildTextField(title: 'March 19', controller: march19),
            const SizedBox(height: 16),
            buildTextField(title: 'March 20', controller: march20),
            const SizedBox(height: 16),
            buildTextField(title: 'March 21', controller: march21),
            const SizedBox(height: 16),
            buildTextField(title: 'March 22', controller: march22),
            const SizedBox(height: 16),
            buildTextField(title: 'March 23', controller: march23),
            const SizedBox(height: 16),
            buildTextField(title: 'To', controller: controllerTo),
            const SizedBox(height: 16),
            buildTextField(title: 'Total Hours', controller: controllerSubject),
            const SizedBox(height: 16),
            buildTextField(
              title: 'Message',
              controller: controllerMessage,
              maxLines: 8,
            ),
            const SizedBox(height: 32),
            ElevatedButton(style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
              textStyle: const TextStyle(fontSize: 20),
              ),
             child: const Text('SEND'),
             onPressed: () => launchEmail(
              toEmail: 'tonyblum@me.com',
              subject: controllerSubject.text,
              message: controllerMessage.text,
             ),
            ),
          ],
        ),
      ),
    );

Future launchEmail({
  required String toEmail,
  required String subject,
  required String message,
}) async {
  final Uri uri = Uri(
    scheme: 'mailto',
    path: toEmail,
    queryParameters: {
      'subject': subject,
      'body': message,
    },
  );

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      // Display an error message to the user.
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Error'),
          content: const Text('No email client is available.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }


    


Widget buildTextField({
  required String title,
  required TextEditingController controller,
  int maxLines = 1,
}) => 
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          maxLines: maxLines,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
    ],
  );

  Widget buildNumberField({
  required  title,
  required TextEditingController controller,
  int maxLines = 1,
}) => 
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          maxLines: maxLines,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
    ],
  );
}