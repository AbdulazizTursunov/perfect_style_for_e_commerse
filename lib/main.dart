import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(50)),
                color: Theme.of(context).primaryColor),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text("Hi Aziz",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white)),
                  subtitle: Text("Good morning",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white)),
                  trailing: const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/image/test_avatar.png')),
                )
              ],
            ),
          ),
          Container(
              color: Theme.of(context).primaryColor,
            child: Container(
              padding:const EdgeInsets.symmetric(horizontal: 30),
              decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100))),
              child: GridView.count(
                physics:const BouncingScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 30,mainAxisSpacing: 40,
                children: [
                  itemDashBoard('video', Icons.video_call, Colors.deepOrange),
                  itemDashBoard('music', Icons.music_note, Colors.purple),
                  itemDashBoard('image', Icons.image, Colors.green),
                  itemDashBoard('video', Icons.video_call, Colors.deepOrange),
                  itemDashBoard('music', Icons.music_note, Colors.purple),
                  itemDashBoard('image', Icons.image, Colors.green),
                  itemDashBoard('video', Icons.video_call, Colors.deepOrange),
                  itemDashBoard('music', Icons.music_note, Colors.purple),
                  itemDashBoard('image', Icons.image, Colors.green),
                  itemDashBoard('video', Icons.video_call, Colors.deepOrange),
                  itemDashBoard('music', Icons.music_note, Colors.purple),
                  itemDashBoard('image', Icons.image, Colors.green),
                  itemDashBoard('video', Icons.video_call, Colors.deepOrange),
                  itemDashBoard('music', Icons.music_note, Colors.purple),
                  itemDashBoard('image', Icons.image, Colors.green),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  itemDashBoard(String title, IconData icon, Color backgroundColor) =>
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).primaryColor.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(title, style: Theme.of(context).textTheme.titleMedium)
          ]
        ),
      );
}
