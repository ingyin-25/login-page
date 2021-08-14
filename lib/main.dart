import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {runApp(LogIn());}

class LogIn extends StatelessWidget {

  void soundfun(int soundNum){
    AudioCache player = AudioCache(prefix: 'assets/');
      player.play('note$soundNum.wav');
  }//SoundFunction
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(          
          child: Column(
            children: [
               SizedBox(
                height: 50
                ),

                Text('Welcome Back',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 25,
                   fontWeight: FontWeight.bold,
                   color: Colors.black87,
                  ),
                ),

                SizedBox(
                height: 50
                ),

                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 75,
                  backgroundImage: AssetImage('images/happy.jpg'),
                ),

                SizedBox(
                  height: 50,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),

                Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.perm_identity_rounded, color: Colors.teal[900]),
                      title: Text('User Name',
                        style: TextStyle(
                          color: Colors.black26
                        ),
                      ),
                    ),
                  ),
                ),

                Card(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.security, color: Colors.teal[900]),
                      title: Text('Password', 
                        style: TextStyle(
                          color: Colors.black26
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                height: 50
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: TextButton(
                        child: 
                        Column(
                          children: [
                            Container(
                              width: 100, height: 50,
                              color: Colors.black26,
                              child: Center(child: Text('Log-In', style: TextStyle(color: Colors.black))),
                            ),
                          ],
                        ),
                          onPressed:(){
                           soundfun(1);
                          } 
                        ),
                      ),

                    SizedBox(width: 50),
                  

                    Card(
                      child: TextButton(
                        child: 
                          Column(
                            children: [
                              Container(
                                width: 100, height: 50,
                                color: Colors.black26,
                                child: Center(child: Text('Sign-Up', style: TextStyle(color: Colors.black))),
                              ),
                            ],
                          ),
                              onPressed:(){soundfun(2);} 
                        ),
                    ),
                  ],//Children
                ),
              ],//Children
            ),
          ),
        ),
      );
    }
  }

