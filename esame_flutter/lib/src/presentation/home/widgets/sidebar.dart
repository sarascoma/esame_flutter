import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Container(
      color: const Color.fromARGB(255, 29, 29, 29),
      width: 300,
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Row(
          children: [
            Container(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/ChatGPT_logo.svg/768px-ChatGPT_logo.svg.png',
                width: 35,
                ),
              ),
            ),
            const Text(
              'New chat',
              style: TextStyle(color: Colors.white),
            ),
            const Spacer(),
            const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ],
        ),
        Expanded(
          child: ListView(
            children: const [
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'Previous 30 Days',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102),fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Biometric fusion project',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Arduino + TouchDesigner',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Marketing strategy assistance',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'October',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102),fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Diagramma di Gantt',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Lancio dado',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Among Us game',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'July',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102),fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Riscrivere testo',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Parole random video',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'June',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102),fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'May',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102),fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'April',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102),fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'March',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102),fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        'January',
                        style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102),fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'lalalalalalala',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Colosseo_2020.jpg/1200px-Colosseo_2020.jpg',
                  width: 35,
                ),
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upgrade',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),
                ),
                Text(
                  'Get GPT-4, DALL·E, and more',
                  style: TextStyle(color: Color.fromARGB(255, 204, 204, 204),fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 35,
              height: 35,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg)/origin-imgresizer.eurosport.com/2023/11/19/3828960-77812128-2560-1440.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

            const Text(
              'Sara Scomazzon',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ]),
    ));
  }
}
