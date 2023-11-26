import 'package:flutter/material.dart';


class EventsModel {
  final NetworkImage img;
  final String events;
  final String date;
  final String time;
  final String venue;

  EventsModel({
    required this.img,
    required this.events,
    required this.date,
    required this.time,
    required this.venue,
  });
}
