import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var user=["Rayan","Ahmed","Hamza","Moiz","Samad","Habib","Rayan","Ahmed","Hamza","Moiz","Samad","Habib"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName:
            Text("Rayan Ahmed"),
              accountEmail: Text("rayan@gmail.com"),
              currentAccountPicture: CircleAvatar(foregroundImage: AssetImage("assets/images/avtar1.jfif"),),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage("assets/images/avtar.png"),),
                CircleAvatar(foregroundImage: AssetImage("assets/images/avtar.png"),),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.cyan,),
              title: Text("Home"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Shop"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorites"),
              onTap: (){

              },
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("Labels"),
            ),
            ListTile(
              leading: Icon(Icons.label,color: Colors.green,),
              title: Text("Red"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Green"),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Blue"),
              onTap: (){

              },
            ),
          ],
        ),
      ),
      body: ListView.separated(itemBuilder: (context,index) {
       return ListTile(
          leading: Text('${index+1}',style: TextStyle(fontSize: 15)),
          title: Text(user[index],style: TextStyle(fontSize: 30)),
          subtitle: Text("Student"),
          trailing: Icon(Icons.add_call,color: Colors.green,),
        );
      },
        itemCount: user.length,
        separatorBuilder: (context, index){
          return Divider(height: 15, thickness: 2);
        },
      ),
    );
  }
}
