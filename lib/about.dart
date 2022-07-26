
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xEB1565C0),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
        ),
        title: const Align(
          alignment: AlignmentDirectional(-0.3, 0),
          child: Text(
            'About',
            style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
     
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
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
              alignment: AlignmentDirectional(0, -1),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text(
                          'Reconnect',
                          style: TextStyle(
                                fontFamily: 'Merriweather',
                                color: Color(0xFF303F9F),
                                fontSize: 26,
                                fontWeight: FontWeight.w900,
                                decoration: TextDecoration.underline,
                                
                              ),
                        ),
                      const  Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                          child: AutoSizeText(
                            'Amrita University is a multi-disciplinary, research-intensive, private university, educating a vibrant student population of over 24,000 by 1700+ strong faculty. Accredited with the highest possible ‘A++’ grade by NAAC, Amrita offers more than 250 UG, PG, and Ph.D. programs in Engineering, Management, and Medical Sciences including Ayurveda, Life Sciences, Physical Sciences, Agriculture Sciences, Arts & Humanities, and Social & Behavioral Sciences.\n\nWith seven campuses at Amaravati, Amritapuri, Bengaluru, Chennai, Coimbatore, Kochi, and Mysuru and a new upcoming campus at NCR Delhi (Faridabad) and spread over 1200+ acres with 100 lacs square feet of built-up space, Amrita is one of India’s top-ranked private university.',
                            textAlign: TextAlign.start,
                            style:
                                TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xDB000509),
                                      fontSize: 17,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
