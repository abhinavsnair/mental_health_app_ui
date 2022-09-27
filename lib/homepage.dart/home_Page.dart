import 'package:flutter/material.dart';
import 'package:mental_health_app_ui/homepage.dart/feelings_card/Exercise_card.dart';
import 'package:mental_health_app_ui/homepage.dart/feelings_card/feelings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => __HomePageState();
}

class __HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
      ]),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi, Jerald!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('27 sep 2022',
                              style: TextStyle(
                                color: Colors.blue[200],
                              ))
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue[600]),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'How do you feel?',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FeelingsCard(emoji: '😒', text: 'Badly'),
                  FeelingsCard(emoji: '🙂', text: 'Fine'),
                  FeelingsCard(emoji: '😊', text: 'Well'),
                  FeelingsCard(emoji: '😉', text: 'Excellent'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Exersices',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            const ExerciseCard(
                                icon: Icons.favorite,
                                skills: 'Speaking Skills',
                                subtitle: '16 Exercises',
                                backgcolor: Colors.orange),
                            const ExerciseCard(
                                icon: Icons.person,
                                skills: 'Reading Skills',
                                subtitle: '20 Exercises',
                                backgcolor: Colors.blue),
                            const ExerciseCard(
                                icon: Icons.compare_arrows_sharp,
                                skills: 'Communication Skill',
                                subtitle: '16 Exercises',
                                backgcolor: Colors.green),
                            ExerciseCard(
                                icon: Icons.bar_chart_outlined,
                                skills: 'Critical Thinking Skill',
                                subtitle: '18 Exercises',
                                backgcolor: Colors.red[400]),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
