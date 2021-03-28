import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<loginpage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String _UserName = '';
  String _Password ='';

String validator(String svalue){
   if (svalue.trim().isEmpty) {
     return "empty";
   }
   return svalue;
 }
Future<void> _createUser() async{
  try{
    UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
  } on FirebaseAuthException catch(e){
    print("error : $e");
  }
  catch(e){
    print("error : $e");
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        body: SafeArea(
      child:





                 Center(
                   child: SingleChildScrollView(
                      child: Column(

                          children: [


                            SizedBox(
                              height: 0,
                            ),
                            Container(
                              height: 250.0,
                              width: 250.0,
                              padding: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                              ),
                              child: Center(
                                child: Image(
                                    image:AssetImage ('assets/sos.png'),
                                  height: 240,
                                  width : 240,
                                ),

                              ),
                            ),
                          Container(
                              margin: EdgeInsets.all(20),
                              child: TextField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'User Name/Phone Number',
                                ),
                                onChanged: (text) {
                                  setState(() {
                                    _UserName = validator(text);
                                    //print(UserName);
                                    //you can access nameController in its scope to get
                                    // the value of text entered as shown below
                                    //UserName = nameController.text;
                                  });
                                },
                              )),
                            Container(
                                margin: EdgeInsets.fromLTRB(20,0,20,20),
                                child: TextField(
                                  controller: passController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                  ),

                                 /* TextFormField(
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                      labelText: 'Password',
                                    ),*/



                                  onChanged: (text) {
                                    setState(() {
                                      _Password = validator(text);

                                      //print(UserName);
                                      //you can access nameController in its scope to get
                                      // the value of text entered as shown below
                                      //UserName = nameController.text;
                                    });
                                  },
                                )),

                          Center(
                              child: Container(
                                height: 40,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.redAccent, borderRadius: BorderRadius.circular(20)),
                                child: FlatButton(
                                  onPressed: _createUser,

                                  child: Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ),),
                        ],
                ),
                    ),
                 ),
                  ),






    );
  }
}
