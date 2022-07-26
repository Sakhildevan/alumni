import 'package:flutter/material.dart';

import 'register.dart';

class EventWidget extends StatefulWidget {
  const EventWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EventWidgetState createState() => _EventWidgetState();
}

class _EventWidgetState extends State<EventWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(119, 25, 57, 99),
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xD60B1450),
          automaticallyImplyLeading: false,
          leading: InkWell(
            onTap: () async {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.chevron_left_outlined,
              color: Colors.white,
              size: 40,
            ),
          ),
          title: const Align(
            alignment: AlignmentDirectional(-0.4, 0),
            child: Text(
              'Events',
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
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.3, 0.45),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: 90,
                                          height: 50,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Date'),
                                      ),
                                    ),
                                    const Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.75, 0),
                                        child: Text(
                                          'Phase I',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF000509),
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(1, 0.95),
                                        child: SizedBox(
                                          width: 100,
                                          height: 50,
                                          child: ElevatedButton(
                                            onPressed: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      RegistrationWidget(),
                                                ),
                                              );
                                            },
                                             style: ElevatedButton.styleFrom(
                                              primary: Colors.green,
                                            ),
                                            child: Text('Register'),
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.55, 0.4),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 90,
                                          height: 50,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        child: Text('Date'),
                                      ),
                                    ),
                                    const Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.75, 0),
                                        child: Text(
                                          'Phase 2',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF000509),
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: AlignmentDirectional(1, 0.8),
                                        child: SizedBox(
                                          width: 100,
                                          height: 50,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                             style: ElevatedButton.styleFrom(
                                              primary: Colors.green,
                                            ),
                                            child: Text('Register'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.2, -0.45),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      width: 90,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        child: Text('Date'),
                                      ),
                                    ),
                                    const Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.75, 0),
                                        child: Text(
                                          'Phase 3',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF000509),
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: AlignmentDirectional(1, 0),
                                        child: SizedBox(
                                          width: 100,
                                          height: 50,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            child: Text('Register'),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.green,
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(-0.05, 0),
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                constraints: BoxConstraints(
                                  maxWidth: double.infinity,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xD60B1450),
                                  border: Border.all(
                                    color: Colors.black12,
                                    width: 2,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Upcoming events',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFF5F5F5),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.55, 0.4),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 90,
                                          height: 50,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        child: Text('Date'),
                                      ),
                                    ),
                                    const Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.75, 0),
                                        child: Text(
                                          'Phase 2',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF000509),
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: AlignmentDirectional(1, 0.8),
                                        child: SizedBox(
                                          width: 100,
                                          height: 50,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            child: Text('Register'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.55, 0.4),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 90,
                                          height: 50,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        child: Text('Date'),
                                      ),
                                    ),
                                    const Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.75, 0),
                                        child: Text(
                                          'Phase 2',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF000509),
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: AlignmentDirectional(1, 0.8),
                                        child: SizedBox(
                                          width: 100,
                                          height: 50,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            child: Text('Register'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.55, 0.4),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 90,
                                          height: 50,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        child: Text('Date'),
                                      ),
                                    ),
                                    const Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.75, 0),
                                        child: Text(
                                          'Phase 2',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF000509),
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: AlignmentDirectional(1, 0.8),
                                        child: SizedBox(
                                          width: 100,
                                          height: 50,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            child: Text('Register'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
