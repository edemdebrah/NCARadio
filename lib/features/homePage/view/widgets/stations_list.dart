import 'package:dab_online_radio/core/common/widgets/bold_text.dart';
import 'package:dab_online_radio/core/common/widgets/light_text.dart';
import 'package:dab_online_radio/core/model/dab_station.dart';
import 'package:dab_online_radio/features/radioPlayer/view/radioPlayerScreen.dart';
import 'package:flutter/material.dart';

class StationsList extends StatelessWidget {
  final DABStationModel station;

  const StationsList({super.key, required this.station});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            offset: const Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 1,
            color: Colors.grey.shade700,
          ),
          const BoxShadow(
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
          stops: const [
            0.1,
            0.8,
          ],
        ),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              station.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: BoldText(
          textName: station.stationName,
          fontSize: 20,
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.location_pin,
            ),
            LightText(
              textName: station.location,
              fontSize: 12,
            ),
          ],
        ),
        trailing: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: const Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1,
                color: Colors.grey.shade700,
              ),
              const BoxShadow(
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
              stops: const [
                0.1,
                0.8,
              ],
            ),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return RadioplayerScreen(
                  station: station,
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
