class Mahasiswa {
    int id;
    String nama;
    String studi;
    String fakultas;
    DateTime ttl;
    String jenisKelamin;
    String email;
    String password;
    dynamic deletedAt;
    DateTime createdAt;
    DateTime updatedAt;

    Mahasiswa({
        required this.id,
        required this.nama,
        required this.studi,
        required this.fakultas,
        required this.ttl,
        required this.jenisKelamin,
        required this.email,
        required this.password,
        this.deletedAt,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Mahasiswa.fromJson(Map<String, dynamic> json) => Mahasiswa(
        id: json["id"],
        nama: json["nama"],
        studi: json["studi"],
        fakultas: json["fakultas"],
        ttl: DateTime.parse(json["ttl"]),
        jenisKelamin: json["jenis_kelamin"],
        email: json["email"],
        password: json["password"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

}