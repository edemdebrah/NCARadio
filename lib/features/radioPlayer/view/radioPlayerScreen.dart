import 'package:dab_online_radio/core/common/widgets/bold_text.dart';
import 'package:dab_online_radio/core/common/widgets/light_text.dart';
import 'package:dab_online_radio/features/radioPlayer/view/widgets/bigRoundNeu.dart';
import 'package:dab_online_radio/features/radioPlayer/view/widgets/smallRoundNeu.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'widgets/neubox.dart';

class RadioplayerScreen extends StatefulWidget {
  @override
  State<RadioplayerScreen> createState() => _RadioplayerScreenState();

  //creating the constructor to receive the
  //properties that will be pushed from the homePage
  final String? stationName;
  final String? location;
  RadioplayerScreen({
    required this.stationName,
    required this.location,
  });
}

class _RadioplayerScreenState extends State<RadioplayerScreen> {
  //setting the favorite boolean to be triggered
  //when use preses a button
  bool isFavorite = false;
  //setting the playing boolean to be triggered
  //when use preses a button
  bool isPlaying = false;

//the function to change the fovirite button
//when user presses it.
  void changeFavoriteButton() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }
  //the function to change the playing button
//when user presses it.

  void changePlayingMode() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //setting the background with the Linear Gradient
      //to give the background Gradient effect of grey shades
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey.shade300,
              Colors.grey.shade400,
              Colors.grey.shade500,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  //the first section that serves an appbar
                  //contains the row with back and favorite icon
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: NeuBox(child: Icon(Icons.arrow_back)),
                        ),
                      ),
                      Text(
                        'DAB ONLINE RADIO',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      GestureDetector(
                        //adding the function to toggle
                        //between favorite modes
                        onTap: () {
                          changeFavoriteButton();
                        },
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: NeuBox(
                            //using the boolean property to
                            //determine the colour and mode
                            //of the favorite icon
                            child: isFavorite
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 30,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                    size: 30,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),
                //data is being accessed through the widget object
                //if not, we will have to pass the constructor to
                //to the state object again
                BoldText(
                  textName: widget.stationName.toString(),
                  fontSize: 40,
                ),

                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_pin,
                    ),
                    LightText(
                      textName: widget.location.toString(),
                      fontSize: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                //The middle rounded playing indication section
                BigRoundNeu(
                  color: isPlaying ? Colors.green : Colors.red,
                ),
                const SizedBox(
                  height: 30,
                ),

                Text(
                  !isPlaying ? 'Stopped' : 'Playing',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                //progress bar indicator
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: NeuBox(
                    child: LinearPercentIndicator(
                      animation: true,
                      animationDuration: 500,
                      lineHeight: 20,
                      percent: 0.5,
                      progressColor: isPlaying ? Colors.green : Colors.red,
                      backgroundColor: Colors.transparent,
                      barRadius: Radius.circular(80),
                      //linearStrokeCap: LinearStrokeCap.roundAll,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SmallRoundNeu(
                      icon: Icons.skip_previous,
                    ),
                    GestureDetector(
                      onTap: () {
                        changePlayingMode();
                      },
                      child: SmallRoundNeu(
                        icon: !isPlaying ? Icons.play_arrow : Icons.stop,
                        color: !isPlaying ? Colors.green : Colors.red,
                      ),
                    ),
                    SmallRoundNeu(
                      icon: Icons.skip_next,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                // ElevatedButton(
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStatePropertyAll<Color>(
                //       Colors.grey,
                //     ),
                //   ),
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => HomePage(),
                //       ),
                //     );
                //   },
                //   child: Text(
                //     'GO TO HOME PAGE',
                //     style: TextStyle(color: Colors.white),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}