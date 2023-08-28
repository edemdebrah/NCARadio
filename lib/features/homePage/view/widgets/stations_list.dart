import 'package:dab_online_radio/core/common/widgets/bold_text.dart';
import 'package:dab_online_radio/core/common/widgets/light_text.dart';
import 'package:flutter/material.dart';

import '../../../radioPlayer/view/radioPlayerScreen.dart';

class StationsList extends StatelessWidget {
  final String stationName;
  final String location;
  final String image;

  StationsList({
    required this.stationName,
    required this.location,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            offset: Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 1,
            color: Colors.grey.shade700,
          ),
          BoxShadow(
            offset: Offset(-4, -4),
            blurRadius: 15,
            spreadRadius: 1,
            color: Colors.white,
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.grey.shade200,
            Colors.grey.shade400,
          ],
          stops: [
            0.1,
            0.8,
          ],
        ),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Container(
            height: 60,
            width: 60,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: BoldText(
          textName: stationName,
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.location_pin,
            ),
            LightText(
              textName: location,
            ),
          ],
        ),
        trailing: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1,
                color: Colors.grey.shade700,
              ),
              BoxShadow(
                offset: Offset(-2, -2),
                blurRadius: 15,
                spreadRadius: 1,
                color: Colors.white,
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade200,
                //Colors.grey.shade400,
                Colors.grey.shade800,
              ],
              stops: [
                0.1,
                0.8,
              ],
            ),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return RadioplayerScreen(
                  stationName: stationName,
                  location: location,
                );
              }));
            },
            icon: Icon(
              Icons.play_arrow,
              size: 30,
              color: Colors.green[300],
            ),
          ),
        ),
      ),
    );
  }
}
