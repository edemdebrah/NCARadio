import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dab_online_radio/features/homePage/model/dab_stations_model.dart';
import 'package:dab_online_radio/features/homePage/view/widgets/search_field.dart';
import 'package:dab_online_radio/features/homePage/view/widgets/stations_list.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
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
                margin: EdgeInsets.all(
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

              Container(
                height: 80,
                child: const SearchField(),
              ),
              SizedBox(
                height: 20,
              ),

              //defining the section to display list of stations
              //being broadcasted
              Expanded(
                flex: 4,
                child: ListView.builder(
                    itemCount: stationsList.length,
                    itemBuilder: (context, index) {
                      final stationsListCurrentIndex = stationsList[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10,
                        ),
                        child: StationsList(
                          stationName: stationsListCurrentIndex.stationName,
                          location: stationsListCurrentIndex.location,
                          image: stationsListCurrentIndex.image,
                        ),
                      );
                    }),
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
        animationDuration: Duration(milliseconds: 500),
        items: <Widget>[
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
