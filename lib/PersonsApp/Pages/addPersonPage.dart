import 'package:flutter/material.dart';

class AddPersonPage extends StatefulWidget {
  const AddPersonPage({super.key});

  @override
  State<AddPersonPage> createState() => _AddPersonPageState();
}

class _AddPersonPageState extends State<AddPersonPage> {
  var personName = TextEditingController();
  var personPhone = TextEditingController();

  Future<void> kayit(String kisi_ad, String kisi_Tel) async {
    print("Kişi kayıt başarılı : $kisi_ad - $kisi_Tel");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Person List"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                controller: personName,
                decoration: const InputDecoration(hintText: "Person Name")),
            const SizedBox(height: 10),
            TextField(
                controller: personPhone,
                decoration:
                    const InputDecoration(hintText: "Person Phone Number")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  kayit(personName.text, personPhone.text);
                },
                child: Text("Save"))
          ],
        ),
      )),
    );
  }
}
