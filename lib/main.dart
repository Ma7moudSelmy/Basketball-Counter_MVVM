import 'package:basketball_app/Cubit/Counter_Cubit.dart';
import 'package:basketball_app/Cubit/Counter_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(PointCounter());
}

class PointCounter extends StatelessWidget {
  const PointCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Point Counter',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 6, 230, 230),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: const TextStyle(fontSize: 150),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 60),
                          backgroundColor: const Color.fromARGB(
                            255,
                            6,
                            230,
                            230,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).incrementTeam(team: 'A', buttonnumber: 1);
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 60),
                          backgroundColor: const Color.fromARGB(
                            255,
                            6,
                            230,
                            230,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).incrementTeam(team: 'A', buttonnumber: 2);
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 60),
                          backgroundColor: const Color.fromARGB(
                            255,
                            6,
                            230,
                            230,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).incrementTeam(team: 'A', buttonnumber: 3);
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                      width: 10,
                    ),
                  ),

                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: const TextStyle(fontSize: 150),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 60),
                          backgroundColor: const Color.fromARGB(
                            255,
                            6,
                            230,
                            230,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).incrementTeam(team: 'B', buttonnumber: 1);
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 60),
                          backgroundColor: const Color.fromARGB(
                            255,
                            6,
                            230,
                            230,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).incrementTeam(team: 'B', buttonnumber: 2);
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 60),
                          backgroundColor: const Color.fromARGB(
                            255,
                            6,
                            230,
                            230,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).incrementTeam(team: 'B', buttonnumber: 3);
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 50),

              // Reset Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 60),
                  backgroundColor: const Color.fromARGB(255, 6, 230, 230),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Reset ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {
        if (state is CounterAIncrementState) {
          teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        } else {
          teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        }
      },
    );
  }
}
