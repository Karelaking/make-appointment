import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class AppointmentModel {
  @HiveField(0)
  String? id;
  String? personName;
  String? description;
  String? image;
  String? date;
  String? time;
  String? phone;
  String? email;
  String? topic;
  String? location;
  List<bool>? priorityLevel;

  AppointmentModel(
      {this.id,
      this.personName,
      this.description,
      this.image,
      this.date,
      this.time,
      this.phone,
      this.email,
      this.topic,
      this.location,
      this.priorityLevel});

  AppointmentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    personName = json['personName'];
    description = json['description'];
    image = json['image'];
    date = json['date'];
    time = json['time'];
    phone = json['phone'];
    email = json['email'];
    topic = json['topic'];
    location = json['location'];
    priorityLevel = json['priorityLevel'].cast<bool>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['personName'] = personName;
    data['description'] = description;
    data['image'] = image;
    data['date'] = date;
    data['time'] = time;
    data['phone'] = phone;
    data['email'] = email;
    data['topic'] = topic;
    data['location'] = location;
    data['priorityLevel'] = priorityLevel;
    return data;
  }
}
