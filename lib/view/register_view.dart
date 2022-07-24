import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({ Key? key }) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _email=TextEditingController();
    _password=TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Column(
            children: [
              TextField(controller: _email,
              enableSuggestions: false,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(hintText: 'Enter your email'
              ),
              ),
              TextField(controller: _password,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(hintText: 'Enter your password'
              ),),
              TextButton(
                  onPressed: () async {
                    final email = _email.text;
                    final password = _password.text;
                    try{
                      final UserCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
                      print(UserCredential);
                    } on FirebaseAuthException catch(e){
                      if(e.code=='weak-password'){
                        print('Weak password!');
                        }
                        else if(e.code=='email-already-in-use'){
                        print('Email already in use!');  
                      } else if(e.code=='invalid-email'){
                        print('Invalid email!');
                      }
                    }
                    
        
                  },
                  child: const Text('Register'),
                ),
                TextButton(onPressed: (){
                  Navigator.of(context).pushNamedAndRemoveUntil('/login/', (route) => false);
                }, child: const Text('Already Registered? Login Here!'))
            ],
          ),
    );
  }
  }