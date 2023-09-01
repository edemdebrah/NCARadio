import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dab_online_radio/core/model/dab_station.dart';
import 'package:dab_online_radio/features/homePage/logic/radio_manager_logic/radio_manager_bloc.dart';
import 'package:dab_online_radio/features/homePage/view/widgets/search_field.dart';
import 'package:dab_online_radio/features/homePage/view/widgets/stations_list.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            children: [
              //on air image
              Container(
                margin: const EdgeInsets.all(
                  20,
                ),
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/on_air.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(
                height: 80,
                child: SearchField(),
              ),
              const SizedBox(
                height: 20,
              ),

              //defining the section to display list of stations
              //being broadcasted
              BlocBuilder<RadioManagerBloc, RadioManagerState>(
                builder: (context, state) {
                  return Expanded(
                    flex: 4,
                    child: ListView.builder(
                        itemCount: DABStationModel.stationsList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 10,
                            ),
                            child: StationsList(
                              station: DABStationModel.stationsList[index],
                            ),
                          );
                        }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        backgroundColor: Colors.grey.shade300,
        color: Colors.green.shade300,
        buttonBackgroundColor: Colors.red,
        animationDuration: const Duration(milliseconds: 500),
        items: const <Widget>[
          Icon(
            Icons.favorite,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.info,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //Handle button tap
          debugPrint(index.toString());
        },
      ),
    );
  }
}
