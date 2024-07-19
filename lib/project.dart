import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  cards(language, projectname, desc, rating, link) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                language,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                projectname,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                desc,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.white70, size: 20),
                  Text(
                    rating,
                    style: const TextStyle(color: Colors.white70),
                  ),
                  Expanded(child: Container()),
                  InkWell(
                    onTap: () {
                      launchUrl(
                        Uri.parse(link),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    child: const Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        backgroundColor: const Color(0xff252525),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              cards('FLUTTER', 'MEDICAL APP', 'App to Book A ppointment', '10',
                  'https://github.com/johnuberbacher/flutter_medical'),
              cards('FLUTTER', 'PORTFOLIO APP', 'App to showcase skills', '10',
                  'https://github.com/Ayush-Dwivedi694/Portfolio'),
              cards('FLUTTER', 'CALCULATOR', 'App used to do Calculations', '9',
                  'https://github.com/AmirBayat0/Flutter-Simple-Calculator/tree/main/flutter_calculator'),
              cards(
                  'PYTHON',
                  'COMPOUND INTEREST CALCULATOR',
                  'App used to Calculate compound interest',
                  '9',
                  'https://github.com/Projub/compound_interest_calculator'),
              cards('JAVA', 'ATM MACHINE CODE', 'Internal Code of atm machine',
                  '9', 'https://github.com/dhvakr/Atm-Machine-Code'),
              cards('JAVA', 'NOTEPAD', 'Notepad application made using JAVA',
                  '9', 'https://github.com/Ayush-Dwivedi694/Notepad'),
              cards(
                  'MERN STACK',
                  'EVENT MANAGEMENT WEBSITE',
                  'App to manage any event',
                  '9',
                  'https://github.com/sharmakeshav1030/EventManagementWebsite'),
              cards(
                  'FULLSTACK WEBSITE',
                  'CLAIREVAYONT',
                  'Website containing education materials',
                  '7',
                  'https://github.com/sunil9813/Education-Website-Using-ReactJS'),
              cards(
                  'MERN FULLSTACK',
                  'BOOK WEBSITE',
                  'Website to sell Book online',
                  '10',
                  'https://github.com/Ayush-Dwivedi694/books'),
              cards(
                  'FRONTEND WEBSITE',
                  'PORTFOLIO WEBSITE',
                  'Website showcasing projects, internships and certificates',
                  '10',
                  'https://github.com/bloominstituteoftechnology/portfolio-website'),
            ],
          ),
        ),
      ),
    );
  }
}
