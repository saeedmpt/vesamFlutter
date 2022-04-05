import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.pink,
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          filled: true,
        ),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: const Color(0xff1E1E1E),
        textTheme: GoogleFonts.mcLarenTextTheme(const TextTheme(
          headline6: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: 16),
          bodyText1: TextStyle(fontSize: 14),
        )),
      ),
      home: const HomePage(),
    );
  }
}

enum SkillType { photoshop, xd, illustrator, afterEffect, lightRoom }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SkillType skillType = SkillType.photoshop;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("hello world"),
          actions: [
            const Icon(
              CupertinoIcons.bubble_left,
              size: 24,
            ),
            InkWell(
              customBorder: const CircleBorder(),
              onTap: () {},
              splashColor: Colors.white54,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  CupertinoIcons.ellipsis_vertical,
                  size: 24,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/images/my_img.jpeg',
                          width: 60, height: 60, fit: BoxFit.fill),
                    ),
                    const Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Text("saeedmpt"),
                    )),
                    InkWell(
                      onTap: () {},
                      customBorder: const CircleBorder(),
                      child: Icon(
                        CupertinoIcons.heart,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "collection 1.15.0 (1.16.0 available) connectivity 3.0.6 (discontinued) fake_async 1.2.0 (1.3.0 available) flutter_lints 1.0.4 "
                  "(2.0.0 available) google_fonts 2.3.1 js 0.6.3 (0.6.4 available) lints 1.0.1 (2.0.0 available) material_color_utilities"
                  " 0.1.3 (0.1.4 available) path 1.8.0 (1.8.1 available) petitparser 4.4.0 (5.0.0 available) source_span 1.8.1 "
                  " xml 5.3.1 (6.0.1 available) Downloading google_fonts 2.3.1... Changed 1 dependency!",
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "Skill",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Skill(
                        type: SkillType.photoshop,
                        title: "photoshop",
                        path: "assets/images/my_img.jpeg",
                        isActive: skillType == SkillType.photoshop,
                        shadowColor: Colors.pink,
                        onTap: () {
                          updateSelectedSkill(SkillType.photoshop);
                        },
                      ),
                      Skill(
                        type: SkillType.illustrator,
                        title: "illustrator",
                        path: "assets/images/my_img.jpeg",
                        isActive: skillType == SkillType.illustrator,
                        shadowColor: Colors.pink,
                        onTap: () {
                          updateSelectedSkill(SkillType.illustrator);
                        },
                      ),
                      Skill(
                        type: SkillType.xd,
                        title: "xd",
                        path: "assets/images/my_img.jpeg",
                        isActive: skillType == SkillType.xd,
                        shadowColor: Colors.pink,
                        onTap: () {
                          updateSelectedSkill(SkillType.xd);
                        },
                      ),
                      Skill(
                        type: SkillType.afterEffect,
                        title: "afterEffect",
                        path: "assets/images/my_img.jpeg",
                        isActive: skillType == SkillType.afterEffect,
                        shadowColor: Colors.pink,
                        onTap: () {
                          updateSelectedSkill(SkillType.afterEffect);
                        },
                      ),
                    ],
                  )),
              const Divider(
                indent: 30,
                endIndent: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "Personal Information",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Email"),
                      prefixIcon: Icon(CupertinoIcons.at)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Password"),
                      prefixIcon: Icon(CupertinoIcons.lock)),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                      child: ElevatedButton(

                          onPressed: () {}, child: Text("Save")))),
              const SizedBox(
                height: 4,
              ),
            ],
          ),
        ));
  }

  void updateSelectedSkill(SkillType type) {
    setState(() {
      skillType = type;
    });
  }
}

class Skill extends StatelessWidget {
  final SkillType type;
  final String path;
  final String title;
  final bool isActive;
  final Color shadowColor;
  final Function() onTap;

  const Skill(
      {Key? key,
      required this.type,
      required this.path,
      required this.title,
      required this.isActive,
      required this.shadowColor,
      required this.onTap})
      : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var span = 3;
    var width =
        (MediaQuery.of(context).size.width - (2 * 20) - (8 * (span - 1))) /
            span;
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        width: width,
        height: width,
        decoration: isActive
            ? BoxDecoration(
                color: Theme.of(context).dividerColor,
                borderRadius: BorderRadius.circular(8))
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 12,
                  color: shadowColor.withOpacity(0.3),
                )
              ]),
              child: Image.asset(
                path,
                width: width / 2,
                height: width / 2,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
