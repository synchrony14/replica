import 'package:flutter/material.dart';
import 'package:replica_2/screens/dashboard_card.dart';
import 'package:replica_2/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( 
        backgroundColor: Colors.blueAccent,
        body: _mainPanel(),
      ),
    );
  }
}

//WIDGETS SECTION
Widget _mainPanel({required Column child}) => Column(
  children: [
    const _MainForm(),
    _DashBoard(),
    _Icons(),
  ],
);

//CLASSES SECTION
class _MainForm extends StatelessWidget {
  const _MainForm({required Column child});
  @override
  Widget build(BuildContext context) {
    return const _MainForm(
      child: Column(
        children: [      
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                StyledTitle('See Job Run'),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/img/me.jpg'),
                    radius: 25,
                ),
              ],
            ),
            Row(
              children: [
                StyledText('Welcome Amatsu'),
              ],
            ),

            
        ],  
      ),
    );
  }
}

class _DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                      children: [
                      DashboardCard(
                        title: 'Jobs',
                        icon: Icons.handyman_outlined,
                        color: Colors.green,
                        onTap: () {
                          // Navigate to Jobs Page
                        },
                      ),
                      DashboardCard(
                        title: 'To-Do List',
                        icon: Icons.list,
                        color: Colors.green,
                        onTap: () {
                          // Navigate to To-Do List Page
                          },
                      ),
                      DashboardCard(
                        title: 'Appointments',
                        icon: Icons.receipt,
                        color: Colors.green,
                        onTap: () {
                          // Navigate to Appointments Page
                          },
                      ),
                      DashboardCard(
                        title: 'Customers',
                        icon: Icons.people,
                        color: Colors.green,
                        onTap: () {
                          // Navigate to Customers Page
                        },
                      ),
                      DashboardCard(
                        title: 'Time Cards',
                        icon: Icons.lock_clock,
                        color: Colors.green,
                        onTap: () {
                          // Navigate to Time Cards Page
                        },
                      ),
                      DashboardCard(
                        title: 'Change Orders',
                        icon: Icons.note,
                        color: Colors.green,
                        onTap: () {
                          // Navigate to Change Orders Page
                        },
                      ),
                    ],
                  ),
                ),
              );
  }
}
    
class _Icons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(onPressed: (){},
                      icon: const Icon(Icons.home),
                      color: Colors.white,
                      iconSize: 35,
                    ),
                    const Text('Home',
                      style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: (){},
                      icon: const Icon(Icons.lock_clock),
                        color: Colors.white,
                        iconSize: 35,
                    ),
                    const Text('Clock-In',
                      style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: (){},
                      icon: const Icon(Icons.search),
                      iconSize: 35,
                      color: Colors.white,
                    ),
                  const Text('Search',
                    style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: (){},
                      icon: const Icon(Icons.contact_page),
                      iconSize: 35,
                      color: Colors.white,
                    ),
                    const Text('Contacts',
                      style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: (){},
                      icon: const Icon(Icons.person),
                      iconSize: 35,
                      color: Colors.white,
                    ),
                    const Text('Me',
                      style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
  }
}

        

