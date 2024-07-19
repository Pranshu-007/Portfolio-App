// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  details(nums, type) {
    return Row(
      children: [
        Text(
          nums,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(margin: const EdgeInsets.only(top: 10), child: Text(type)),
      ],
    );
  }

  cards(IconData icon, String text) {
    return Container(
      width: 105,
      height: 105,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: const Color(0xff252525),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(icon, color: Colors.white),
              const SizedBox(height: 10),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            color: Colors.black,
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: TextButton(
                  child: const Text(
                    '\nProject',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'project');
                  },
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  child: const Text(
                    'About Me',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'about');
                  },
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.35, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 0, bottom: 250),
                child: ShaderMask(
                    shaderCallback: (rect) {
                      return const LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black, Colors.transparent])
                          .createShader(
                              Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      'assets/profile.png',
                      height: 370,
                      fit: BoxFit.contain,
                    )),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.54,
                ),
                child: const Column(
                  children: [
                    Text(
                      'Pranshu Shukla',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Software Developer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    details('69', 'Projects'),
                    details('20', 'Certificates'),
                    details('10', 'Awards'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Specialised In',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        cards(Icons.android, 'Android'),
                        cards(FontAwesomeIcons.html5, 'HTML'),
                        cards(FontAwesomeIcons.css3Alt, 'CSS'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        cards(Icons.javascript, 'JavaScript'),
                        cards(FontAwesomeIcons.react, 'React JS'),
                        cards(FontAwesomeIcons.node, 'Node JS'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        cards(FontAwesomeIcons.code, 'C++'),
                        cards(FontAwesomeIcons.github, 'Github'),
                        cards(FontAwesomeIcons.figma, 'Figma'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
