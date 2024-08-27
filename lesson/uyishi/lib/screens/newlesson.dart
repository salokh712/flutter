import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  List<String> messages = [];
  GlobalKey<FormState> formKey = GlobalKey();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Textfield Widget Test",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                controller: nameController,
                style: const TextStyle(color: Colors.deepPurple, fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.orange),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.orange),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.deepPurple),
                  ),
                  hintText: "Name",
                  labelText: "Message",
                  labelStyle: const TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onEditingComplete: () {},
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.length < 5) {
                    return "Habar eng kamida 5ta harfdan iborat bo'lishi kerak";
                  }
                  return null;
                },
                // maxLength: 200,
                maxLines: 4,
                onChanged: (value) {},
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: controller,
                style: const TextStyle(color: Colors.deepPurple, fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.orange),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.orange),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.deepPurple),
                  ),
                  hintText: "Name",
                  labelText: "Pochta",
                  labelStyle: const TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onEditingComplete: () {},
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  final bool emailValid = RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                  ).hasMatch(value!);
                  if (emailValid == false) {
                    return "Bu email hato";
                  }
                  return null;
                },
                onChanged: (value) {},
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: passwordController,
                style: const TextStyle(color: Colors.deepPurple, fontSize: 20),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.orange),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.orange),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.deepPurple),
                  ),
                  hintText: "Name",
                  labelText: "Parol",
                  labelStyle: const TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: GestureDetector(
                    child: isVisible == true
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                ),
                obscureText: isVisible,
                onEditingComplete: () {},
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  RegExp regex = RegExp(
                    r"(?=.*[A-Z])(?=.*[a-z])(?=.*?[0-9])$",
                  );
                  if (regex.hasMatch(value!) == false) {
                    return "Parolingiz to'g'ri kelmaydi";
                  }
                  return null;
                },
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: messages.length,
                itemBuilder: (_, __) {
                  return ListTile(
                    title: Text(
                      messages[__],
                      style: const TextStyle(color: Colors.cyan),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        child: const Text("Send"),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            messages.add(controller.text);
            controller.clear();
            nameController.clear();
            passwordController.clear();
            setState(() {});
          }
        },
      ),
    );
  }
}
