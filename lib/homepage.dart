import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'login.dart';
import 'signup.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(-0.65, 0.3),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              constraints: const BoxConstraints(
                maxWidth: double.infinity,
                maxHeight: double.infinity,
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional(0, -1),
                  end: AlignmentDirectional(0, 1),
                  colors: [
                    Color(0xFF0F5AA5),
                    Color(0xFF0F5AA5),
                    Color.fromARGB(255, 251, 252, 253),
                  ],
                  stops: [0, 0, 1],
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0, -0.45),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: const AlignmentDirectional(-0.35, -1),
                              child: Container(
                                width: double.infinity,
                                height: 100,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF3272B2),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-0.4, -0.2),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginWidget(),
                                                  ),
                                                );
                                              },
                                              child: const Text(
                                                'Login',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                       Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-2, -0.2),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: InkWell(
                                                 onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                   MaterialPageRoute(
                                                       builder: (context) =>
                                                          SignupWidget(),
                                                     ),
                                                   );
                                                 },
                                              child: const Text(
                                                'Signup',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                       Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-2, -0.2),
                                          child: InkWell(
                                               onTap: () async {
                                               await Navigator.push(
                                                   context,
                                                   MaterialPageRoute(
                                                   builder: (context) =>
                                                         SignupWidget(),
                                                   ),
                                                 );
                                               },
                                            child: const Text(
                                              'About',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: AlignmentDirectional(-0.15, -0.5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.05, 0.3),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 10, 0),
                                child: AutoSizeText(
                                  'RE-connect',
                                  style: GoogleFonts.getFont(
                                    'Mogra',
                                    color: Color(0xFF3F51B5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 65,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.2, 2.5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/amrita_cyber.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                            Image.asset(
                              'assets/images/amritapuri_dark.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                            Image.asset(
                              'assets/images/bi0s_dark.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-0.1, 0.4),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(-0.3, -0.55),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: Image.asset(
                                          'assets/images/p.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: 'imageTag4',
                                    transitionOnUserGestures: true,
                                    child: Image.asset(
                                      'assets/images/p.png',
                                      width: double.infinity,
                                      height: 800,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
