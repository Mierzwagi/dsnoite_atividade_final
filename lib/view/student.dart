// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_pet_adopt/services/http_connect.dart';
import 'package:flutter_pet_adopt/view/students.dart';
import 'package:flutter_pet_adopt/widgets/info_container.dart';

class StudentScreen extends StatefulWidget {
  final String cpf;

  const StudentScreen({required this.cpf, Key? key}) : super(key: key);

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  Student? student;

  @override
  void initState() {
    // TODO: implement initState
    getStudents();
    super.initState();
  }

  getStudents() async {
    var response =
        await HttpConnect.getStudent(endpoint: "/student/", cpf: widget.cpf);

    setState(() {
      student = Student.fromJson(response);
    });
    print(student?.nome);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: const SliverAppBar(),
          ),
        ];
      }, body: Builder(builder: (BuildContext context) {
        return CustomScrollView(
          slivers: <Widget>[
            SliverOverlapInjector(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
            SliverFixedExtentList(
              itemExtent: MediaQuery.of(context).size.height,
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (BuildContext context, int index) => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Nome: ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  height: 2.5,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(student?.nome ?? "",
                                    style: TextStyle(
                                      fontSize: 16,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Número RA: ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  height: 2.5,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("123456",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "CPF: ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  height: 2.5,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("123.456.789-00",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "RG: ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  height: 2.5,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("12.345.678-9",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Endereço: ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    height: 2.5,
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  "Rua das Flores, 123, Bairro: canteiro rosa",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Telefone: ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  height: 2.5,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("(11) 99876-5432",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "E-mail: ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  height: 2.5,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text("ana.silva@email.com",
                                    style: TextStyle(
                                      fontSize: 16,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Data de Nascimento: ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  height: 2.5,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("01/01/2000",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Gênero: ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  height: 2.5,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Feminino",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Cursos:",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Engenharia Civil, Departamento de Engenharia Civil",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Text(widget.cpf),
                  ],
                ),
              ),
            ),
          ],
        );
      })),
    );
  }
}
