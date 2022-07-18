
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationWidget extends StatefulWidget {
  const RegistrationWidget({Key key}) : super(key: key);

  @override
  _RegistrationWidgetState createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  String radioButtonValue;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1565C0),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.chevron_left_outlined,
            color: Color(0xFFF5F5F5),
            size: 40,
          ),
        ),
        title: const Align(
          alignment: AlignmentDirectional(-0.4, 0),
          child: Text(
            'Registration',
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
          child: Align(
            alignment: AlignmentDirectional(0.4, 0.35),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.35, -0.55),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF1565C0),
                            Color(0xFF1565C0),
                              Color.fromARGB(255, 251, 252, 253),
                                Color.fromARGB(255, 251, 252, 253),
                           
                          ],
                          stops: [0, 0, 1, 1],
                          begin: AlignmentDirectional(1, -0.34),
                          end: AlignmentDirectional(-1, 0.34),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 130, 0, 0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Form(
                                    key: formKey,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: Align(
                                      alignment: AlignmentDirectional(0.25, 0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.45, -0.35),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 20, 50, 0),
                                                child: TextFormField(
                                                  controller: textController1,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'textController1',
                                                    Duration(
                                                        milliseconds: 1000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'Name',
                                                    enabledBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF000509),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF000509),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    suffixIcon:
                                                        textController1
                                                                .text.isNotEmpty
                                                            ? InkWell(
                                                                onTap: () =>
                                                                    setState(
                                                                  () => textController1
                                                                      ?.clear(),
                                                                ),
                                                                child: const Icon(
                                                                  Icons.clear,
                                                                  color: Color.fromARGB(255, 8, 1, 0),
                                                                  size: 22,
                                                                ),
                                                              )
                                                            : null,
                                                  ),
                                                  style: const TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xDB000509),
                                                        fontSize: 16,
                                                      ),
                                                  textAlign: TextAlign.center,
                                                  validator: (val) {
                                                    if (val == null ||
                                                        val.isEmpty) {
                                                      return 'Field is required';
                                                    }

                                                  {
                                                      return 'Must start with a letter and can only contain letters, digits and - or _.';
                                                    }
                                                    
                                                  },
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0.45),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 20, 50, 0),
                                                child: TextFormField(
                                                  controller: textController2,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'textController2',
                                                    Duration(
                                                        milliseconds: 1000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'Roll no:',
                                                    enabledBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF000509),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF000509),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    suffixIcon:
                                                        textController2
                                                                .text.isNotEmpty
                                                            ? InkWell(
                                                                onTap: () =>
                                                                    setState(
                                                                  () => textController2
                                                                      ?.clear(),
                                                                ),
                                                                child: const Icon(
                                                                  Icons.clear,
                                                                  color: Colors.black,
                                                                  size: 22,
                                                                ),
                                                              )
                                                            : null,
                                                  ),
                                                  style: const TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xDB000509),
                                                        fontSize: 16,
                                                      ),
                                                  textAlign: TextAlign.center,
                                                  validator: (val) {
                                                    if (val == null ||
                                                        val.isEmpty) {
                                                      return 'Field is required';
                                                    }

                                                    return null;
                                                  },
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.7, -0.1),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(50, 20, 50, 0),
                                                child: TextFormField(
                                                  controller: textController3,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'textController3',
                                                    const Duration(
                                                        milliseconds: 1000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'Event Name',
                                                    enabledBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF000509),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF000509),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    suffixIcon:
                                                        textController3
                                                                .text.isNotEmpty
                                                            ? InkWell(
                                                                onTap: () =>
                                                                    setState(
                                                                  () => textController3
                                                                      ?.clear(),
                                                                ),
                                                                child: const Icon(
                                                                  Icons.clear,
                                                                  color: Colors.black,
                                                                  size: 22,
                                                                ),
                                                              )
                                                            : null,
                                                  ),
                                                  style: const TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xDB000509),
                                                        fontSize: 16,
                                                      ),
                                                  textAlign: TextAlign.center,
                                                  validator: (val) {
                                                    if (val == null ||
                                                        val.isEmpty) {
                                                      return 'Field is required';
                                                    }

                                                    return null;
                                                  },
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.7, -0.1),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 20, 50, 0),
                                                child: TextFormField(
                                                  controller: textController4,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    'textController4',
                                                    Duration(
                                                        milliseconds: 1000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'Department',
                                                    enabledBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF000509),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        const UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF000509),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    suffixIcon:
                                                        textController4
                                                                .text.isNotEmpty
                                                            ? InkWell(
                                                                onTap: () =>
                                                                    setState(
                                                                  () => textController4
                                                                      ?.clear(),
                                                                ),
                                                                child: const Icon(
                                                                  Icons.clear,
                                                                  color: Colors.black,
                                                                  size: 22,
                                                                ),
                                                              )
                                                            : null,
                                                  ),
                                                  style: const TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xDB000509),
                                                        fontSize: 16,
                                                      ),
                                                  textAlign: TextAlign.center,
                                                  validator: (val) {
                                                    if (val == null ||
                                                        val.isEmpty) {
                                                      return 'Field is required';
                                                    }

                                                    return null;
                                                  },
                                                ),
                                              ),
                                            ),
                                            const Align(
                                              alignment: AlignmentDirectional(
                                                  -0.05, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 20, 0, 0),
                                                
                                              ),
                                            ),
                                             Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child:SizedBox(
                                                width: 130,
                                                height: 40,
                                               
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  child:Text( 'Register'),
                                                   style: ElevatedButton.styleFrom(
                                              primary: Colors.green,
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
                          ],
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
    );
  }
}
