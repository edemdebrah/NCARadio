import 'package:dab_online_radio/core/utilities/dependency_injector.dart';
import 'package:dab_online_radio/features/homePage/logic/station_player_logic/station_player_bloc.dart';
import 'package:dab_online_radio/features/homePage/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const NCARadio());
}

class NCARadio extends StatelessWidget {
  const NCARadio({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<StationPlayerBloc>(
      create: (context) => dep<StationPlayerBloc>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NCA Radio',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
