// class Animal {
//   String nama;
//   String jenis;
//   int? jumlahKaki;

//   Animal(
//     this.nama,
//     this.jenis,
//     this.jumlahKaki,
//   );
// }

// final listAnimal = [
//   Animal('Burung', 'Unggas', 2),
//   Animal('Hiu', 'Ikan', 0),
// ];

class Animal {
  String nama;
  String jenis;
  int? jumlahKaki;
  String url;

  Animal({
    required this.nama,
    required this.jenis,
    this.jumlahKaki,
    required this.url,
  });
}

final listAnimal = [
  Animal(
      nama: 'Burung',
      jenis: 'Unggas',
      jumlahKaki: 2,
      url:
          'https://images.pexels.com/photos/349758/hummingbird-bird-birds-349758.jpeg?auto=compress&cs=tinysrgb&w=400'),
  Animal(
      nama: 'Hiu',
      jenis: 'Ikan',
      url:
          'https://images.unsplash.com/photo-1560275619-4662e36fa65c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hhcmt8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60'),
];

class Animal2 {
    Animal2({
        required this.id,
        required this.name,
        required this.jenis,
        this.hasTail,
        required this.weight,
    });

    int id;
    String name;
    String jenis;
    bool? hasTail;
    double weight;

    factory Animal2.fromJson(Map<String, dynamic> json) => Animal2(
        id: json["id"],
        name: json["name"],
        jenis: json["jenis"],
        hasTail: json["has_tail"],
        weight: json["weight"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "jenis": jenis,
        "has_tail": hasTail,
        "weight": weight,
    };
}
