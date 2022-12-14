import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NotifyMe(),
      ),
    );

class NotifyMe extends StatefulWidget {
  const NotifyMe({super.key});

  @override
  State<NotifyMe> createState() => _NotifyMeState();
}

class _NotifyMeState extends State<NotifyMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 17, 109),
      body: SingleChildScrollView(
          child: Column(


            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10000),
                child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.close_outlined,
                      size: 30,
                      color: Colors.white30,
                    ),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 350,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/notifyMe.png"),
                            fit: BoxFit.contain,
                          )),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              const Text(
                "Don't miss a single thing!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Set up push notification so you know when you've been messaged or mentioned",
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              //Nofitication button
              InkWell(
                onTap: null,
                child: Container(
                  width: 180,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      "Turn on notification",
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 95, 17, 109),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
