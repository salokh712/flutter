import 'package:meta/meta.dart';
import 'dart:convert';

Coment travelApiFromJson(String str) => Coment.fromJson(json.decode(str));

String travelApiToJson(Coment data) => json.encode(data.toJson());

class Coment {
    int? postId;
    int? id;
    String? name;
    String? email;
    String? body;

    Coment({
         this.postId,
         this.id,
         this.name,
         this.email,
         this.body,
    });

    factory Coment.fromJson(Map<String, dynamic> json) => Coment(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
    };
}
