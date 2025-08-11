
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  bool isHidden = true;
  String msg = '';
  Color msgColor = Colors.black;
  TextEditingController userTxtCtl = TextEditingController();
  TextEditingController pwdTxtCtl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print('from build');
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login',style:TextStyle(fontSize: 50,color:Colors.deepPurple)),
            // Text('Username'),
            TextField(
              controller:userTxtCtl,
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            // Text('Password'),
            TextField(
              controller:pwdTxtCtl,
              obscureText: isHidden,
               decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter password',
                prefixIcon: Icon(Icons.key),
                suffixIcon:IconButton(onPressed: (){
                  isHidden = !isHidden;
                  print(isHidden);
                  setState(() {
                    
                  });
                }, icon: Icon(isHidden? Icons.visibility_off:Icons.visibility)) ,
              ),
            ),
            ElevatedButton(onPressed: (){
              if(userTxtCtl.text.isNotEmpty && pwdTxtCtl.text.isNotEmpty){
                if(userTxtCtl.text== pwdTxtCtl.text)
               {
                msgColor = Colors.green;
                msg = 'Welcome ${userTxtCtl.text}';}
               else{
                msgColor = Colors.red;
                msg = 'Invalid credentials';
               }
              }else{
                msgColor = Colors.orange;
                msg = 'Please enter credentials';
              }
              setState(() {
                
              });
            }, child: Text('Login'),),
            Text(msg,style:TextStyle(color:msgColor)),
          ],
        ),
      ),
    );
  }
}