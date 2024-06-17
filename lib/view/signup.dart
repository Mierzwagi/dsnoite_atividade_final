import 'package:flutter/material.dart';
import 'package:flutter_pet_adopt/services/constants.dart';
import 'package:flutter_pet_adopt/view/student.dart';
import 'package:flutter_pet_adopt/widgets/app_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String cpf = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const SizedBox(
            height: 60,
          ),
          const Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Expanded(
                  child: Text(
                    "Insira o CPF do Aluno:",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    "CPF",
                    style: TextStyle(fontSize: 15, color: Colors.indigo),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: textFieldDecoration,
                    onChanged: (value) {
                      setState(() {
                        cpf = value;
                      });
                    },
                  ),
                ),
                AppButton(
                  title: "Verificar",
                  onclick: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentScreen(cpf: cpf),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
