import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sanbedanpp/util_ui/util.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.38, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15),
                child:ShaderMask(
                  shaderCallback: (rect){
                    return const LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black,Colors.transparent])
                        .createShader(
                      Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                child: Image.asset('assets/images/pp.png'),
              )
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.49),
                child: Column(
                  children: const [
                    Text('Sanbedan Paul',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                    SizedBox(height: 4),
                    Text('Software Devaloper',style: TextStyle(color: Colors.white,fontSize: 20),)
                  ],
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            height: 500,
            margin: const EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Text('SANBEDAN PAUL',style: heading1()),
                          ),
                          Container(
                            //margin: EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.all(20),
                            child: const Text('Passionate about programming and learning new things regularly B.Tech in Software Engineering from Kalinga Institute of Industrial Technology Skilled in Android Devalopment,Dart Language,C++/C and REST API'),
                          )
                        ]
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.all( 19),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child:
                    Column(

                      children: [
                        Container(
                          margin:const EdgeInsets.only(top: 20,bottom: 20),
                          child:
                          Text('SKILLS',style: heading2(),)
                        ),
                        Container(
                          child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: const CircleAvatar(
                                        backgroundImage:AssetImage('assets/images/flutter.png'),
                                        backgroundColor: Colors.transparent,
                                        radius: 40,
                                      ),
                                    ),
                                    const Text('Flutter')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: const CircleAvatar(
                                        backgroundImage:AssetImage('assets/images/ps.png'),
                                        backgroundColor: Colors.transparent,
                                        radius: 40,
                                      ),
                                    ),
                                    const Text('Problem Solving Skills')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: const CircleAvatar(
                                        backgroundImage:AssetImage('assets/images/c++.png'),
                                        backgroundColor: Colors.transparent,
                                        radius: 40,
                                      ),
                                    ),
                                    const Text('C++')
                                  ],
                                )
                              ],
                            )
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 30,bottom: 30),
                            child:
                            Row(

                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: const CircleAvatar(
                                        backgroundImage:AssetImage('assets/images/dart.png'),
                                        backgroundColor: Colors.transparent,
                                        radius: 40,
                                      ),
                                    ),
                                    const Text('Dart')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: const CircleAvatar(
                                        backgroundImage:AssetImage('assets/images/sql.png'),
                                        backgroundColor: Colors.transparent,
                                        radius: 40,
                                      ),
                                    ),
                                    const Text('SQL')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: const CircleAvatar(
                                        backgroundImage:AssetImage('assets/images/git.png'),
                                        backgroundColor: Colors.transparent,
                                        radius: 40,
                                      ),
                                    ),
                                    const Text('Git')
                                  ],
                                )
                              ],
                            )
                        )

                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                      width: 8000,
                      margin: const EdgeInsets.all( 19),
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Container(
                            margin:const EdgeInsets.only(bottom: 30),
                            child:
                            Text('LICENSE AND CERTIFICATION',style: heading2(),),
                          ),
                          Column(
                            children: [
                              Container(
                                child:
                                const Text('Problem Solving (Basic) Certificate'),
                              ),
                              Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse('https://www.hackerrank.com/certificates/d24ab81d2ccf'), builder: (context,followLink)=>
                                  ElevatedButton(
                                      style: ButtonStyle(foregroundColor: getColor(Colors.black, Colors.white),
                                                backgroundColor: getColor(Colors.black, Colors.white),
                                      ),

                                      onPressed: followLink, child: const Text('Open Certificate')),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child:
                                const Text('Problem Solving (Intermediate) Certificate'),
                              ),
                              Link(
                                target: LinkTarget.defaultTarget,
                                uri: Uri.parse('https://www.hackerrank.com/certificates/027a9502d2bf'), builder: (context,followLink)=>
                                  ElevatedButton(onPressed: followLink, child: const Text('Open Certificate')),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child:
                                const Text('Deloitte Technology Virtual Experience Program'),
                              ),
                              Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse('https://drive.google.com/file/d/1Z7XS4unXWXbdGMjjrj1VpTJop853CJrR/view?usp=sharing'), builder: (context,followLink)=>
                                  ElevatedButton(onPressed: followLink, child: const Text('Open Certificate')),
                              ),
                            ],
                          )

                        ],
                      )
                  ),
                  //SizedBox(height: 14,),
                  Container(
                    //padding: EdgeInsets.all(60),//needs to be deleted ......
                    margin: const EdgeInsets.all(19),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(35)
                    ),
                    child: Column(
                      children: [
                        Container(
                          child:
                          Text('PROJECTS',style: heading2()),
                        ),
                        const SizedBox(
                          width: 500,
                          height: 20,
                        ),
                        Column(
                          children:[ Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child:
                                Text('P1:Guess the number Game:',style: heading2(),),
                              ),
                              Container(
                                child:
                                IconButton(
                                  icon: const Icon(FontAwesomeIcons.github), onPressed: () {  },
                                ),
                              )
                            ],
                          ),
                          ]
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child:
                              Text('P2:Portfolio App:',style: heading2(),),
                            ),
                            Container(
                              child:
                              IconButton(
                                 onPressed: () {  },
                                icon: const Icon(FontAwesomeIcons.github)
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child:
                              Text('P3:Food delivery app with \nPayment and Location',style: heading2(),),
                            ),
                            Container(
                              child:
                              IconButton(
                                icon: const Icon(FontAwesomeIcons.github), onPressed: () {  },
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30,)


                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Text('CONTACT ME',style: heading2(),),
                        ),
                        const SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text('Leave a message',style: heading2(),),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          child: TextField(

                            decoration: InputDecoration(
                                border: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(40),
                                )
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(child: const Icon(FontAwesomeIcons.share),),
                        const SizedBox(height: 30),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text('Find me on:-',style: heading2(),),),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: const Icon(FontAwesomeIcons.linkedin,size: 40,), onPressed: () {
                                goToWebPage('https://www.linkedin.com/in/roop37/');
                            },
                            ),
                            IconButton(
                              icon: const Icon(FontAwesomeIcons.github,size: 40,), onPressed: () {
                                goToWebPage('https://github.com/roop37');
                            },
                            ),
                            IconButton(
                              icon: const Icon(FontAwesomeIcons.envelope,size: 40,), onPressed: () {
                                goToWebPage('sanbedan9989@gmail.com');
                            },
                            ),
                            IconButton(
                              icon: const Icon(FontAwesomeIcons.instagram,size: 40,), onPressed: () {
                                goToWebPage('https://www.instagram.com/r.o.o.p_37/');
                            },
                            ),
                          ],
                        ),
                        const SizedBox(height: 30,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

Future<void> goToWebPage(String urlString) async {
  final Uri _url = Uri.parse(urlString);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

