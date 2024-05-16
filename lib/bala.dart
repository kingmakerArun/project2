import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    _passwordVisible = true;
  }
  bool _passwordVisible=true;

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        SizedBox(height: 10,),
      Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://cdn.pixabay.com/photo/2016/05/17/19/08/hyacinth-1398839_640.jpg"),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20.0,),
            Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.cyan),),
            const SizedBox(height: 20.0,),
            Text('User Name'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _userNameController,
                decoration: const InputDecoration(hintText: 'Enter the Username',border: OutlineInputBorder(),),
              ),
            ),
            Text('Password'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: _passwordVisible,
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Enter the password',
                    border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(_passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                            () {
                          _passwordVisible = !_passwordVisible;
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 190.0),
              child: TextButton(
                onPressed: () {

                },
                child: Text('Forgot Password?'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: ElevatedButton(
                onPressed: () {
                },
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
      ]
      ),
    );
  }
}

