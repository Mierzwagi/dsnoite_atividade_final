import 'dart:convert';

class Students {
  Student student;

  Students({
    required this.student,
  });

  factory Students.fromRawJson(String str) =>
      Students.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Students.fromJson(Map<String, dynamic> json) => Students(
        student: Student.fromJson(json["student"]),
      );

  Map<String, dynamic> toJson() => {
        "student": student.toJson(),
      };
}

class Student {
  int? id;
  String? nome;
  int? numero;
  String? cpf;
  String? rg;
  String? endereco;
  String? telefone;
  String? email;
  //DateTime? dataNascimento;
  String? sexo;
  //DateTime? createdAt;
  //DateTime? updatedAt;

  Student({
    required this.id,
    required this.nome,
    required this.numero,
    required this.cpf,
    required this.rg,
    required this.endereco,
    required this.telefone,
    required this.email,
    //required this.dataNascimento,
    required this.sexo,
    //required this.createdAt,
    // required this.updatedAt,
  });

  factory Student.fromRawJson(String str) => Student.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        id: json["id"],
        nome: json["nome"],
        numero: json["numero"],
        cpf: json["cpf"],
        rg: json["rg"],
        endereco: json["endereco"],
        telefone: json["telefone"],
        email: json["email"],
        // dataNascimento: DateTime.parse(json["dataNascimento"]),
        sexo: json["sexo"],
        //  createdAt: DateTime.parse(json["createdAt"]),
        // updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "numero": numero,
        "cpf": cpf,
        "rg": rg,
        "endereco": endereco,
        "telefone": telefone,
        "email": email,
        // "dataNascimento": dataNascimento.toIso8601String(),
        "sexo": sexo,
        // "createdAt": createdAt.toIso8601String(),
        // "updatedAt": updatedAt.toIso8601String(),
      };
}
