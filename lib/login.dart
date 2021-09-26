import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatelessWidget {
  var emailController =   TextEditingController();
  var PasswController =   TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
            'LOGIN PAGE',
            style: TextStyle(
            color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,

        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LOGIN',
                  style:TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: emailController,
                  onFieldSubmitted: (String value){
                    print(value);
                  },
                  onChanged: (String value){
                    print(value);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    //hintText: 'Email Adress',
                    labelText: 'Email Adress',
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(

                    ),

                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: PasswController,
                  onFieldSubmitted: (String value){
                    print(value);
                  },
                  onChanged: (String value){
                    print(value);
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    //hintText: 'Email Adress',
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(

                    ),

                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                      onPressed: () {
                        print(emailController.text);
                        print(PasswController.text);
                      },
                    child: Text(
                      'Login',
                        style:TextStyle(
                        color: Colors.white,
                          fontSize: 20,
                    ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                ),
                    TextButton(
                        onPressed: (){},
                        child: Text(
                        'Register Now',
                          style: TextStyle(
                            color:Colors.black,
                          ),
                      ) ,
                      ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}