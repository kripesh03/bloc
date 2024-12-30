import 'package:flutter/material.dart';


// ignore: must_be_immutable
class StudentBlocView extends StatelessWidget {
  StudentBlocView({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Bloc View'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Name",
              ),
              controller: name,
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Age",
              ),
              controller: age,
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Address",
              ),
              controller: address,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text("add")),
            ElevatedButton(
                onPressed: () {

                },
                child: const Text("delete")),
            // BlocBuilder<StudentCubit, String>(builder: (context, state) {
            //   return Text(
            //     state,
            //     style: const TextStyle(fontSize: 18),
            //   );
            // })
          ],
        ),
      ),
    );
  }
}
