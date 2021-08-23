import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        scaffoldBackgroundColor: const Color(0xAFAFAF)
      ),

      home: MyHomePage(title: 'Side Navigation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      drawer:Drawer(
        child:ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Habibullah"),
                accountEmail: Text("Habibullah@programer.net"),

                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/me.jpeg'),),
              decoration: BoxDecoration(
                color: Colors.grey[850],
              ),
            ),
            ListTile(
              title:Text("Home"),
              leading:Icon(Icons.home)
            ),
            ListTile(
                title:Text("About"),
                leading:Icon(Icons.info_outline)
            ),
            ListTile(
                title:Text("Contact Us"),
                leading:Icon(Icons.call)
            )
          ],

        ),
      ),
      appBar: AppBar(

        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),

    );
  }
}
