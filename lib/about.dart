import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            // left: MediaQuery.of(context).size.width * 0.18
            margin: const EdgeInsets.only(bottom: 250),
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
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.56),
            child: Column(
              children: [
                const Text(
                  'HELLO , I am',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Pranshu Shukla',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Software Developer',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 100,
                  child: TextButton(
                      onPressed: () {
                        launchUrl(
                          Uri.parse(
                              "https://docs.google.com/forms/d/e/1FAIpQLSeATQ1M-Rnar8rUN_C6x2Ugjam7KPVIaJ35Q_Bm0Y5Yd8DB8g/viewform?pli=1&pli=1"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white),
                      child: Column(
                        children: [
                          const Text('Hire Me'),
                        ],
                      )),
                ),
                SizedBox(
                  width: 100,
                  child: TextButton(
                      onPressed: () {
                        launchUrl(
                          Uri.parse(
                              "https://docs.google.com/forms/d/e/1FAIpQLSeATQ1M-Rnar8rUN_C6x2Ugjam7KPVIaJ35Q_Bm0Y5Yd8DB8g/viewform?pli=1&pli=1"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white),
                      child: Column(
                        children: [
                          const Text('About me'),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 110,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        launchUrl(
                          Uri.parse(
                              "https://www.instagram.com/f1ction_pro?igsh=MWw4MHRpbnZxeGdrNQ=="),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      icon: const FaIcon(FontAwesomeIcons.instagram,
                          color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {
                        launchUrl(
                          Uri.parse("https://twitter.com/?lang=en"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      icon: const FaIcon(FontAwesomeIcons.twitter,
                          color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {
                        launchUrl(
                          Uri.parse("https://github.com/Pranshu-007"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      icon: const FaIcon(FontAwesomeIcons.github,
                          color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {
                        launchUrl(
                          Uri.parse(
                              "https://www.linkedin.com/in/pranshu-shukla-649a96209/"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      icon: const FaIcon(FontAwesomeIcons.linkedin,
                          color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {
                        launchUrl(
                          Uri.parse("https://www.facebook.com"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      icon: const FaIcon(FontAwesomeIcons.facebook,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
