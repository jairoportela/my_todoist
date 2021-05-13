// import 'package:flutter/material.dart';

// import 'inbox_screen.dart';

// class AuthScreen extends StatefulWidget {
//   @override
//   _AuthScreenState createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   GlobalKey<FormState> _formKey = GlobalKey();
//   Map<String, String> _formData = {'email': '', 'password': ''};

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: SingleChildScrollView(
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(),
//                       image: DecorationImage(
//                         image: AssetImage('assets/images/my_icon.png'),
//                       ),
//                     ),
//                     width: 200,
//                     height: 200,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       'Email',
//                       style: Theme.of(context).textTheme.headline6,
//                     ),
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       'Password',
//                       style: Theme.of(context).textTheme.headline6,
//                     ),
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).pushNamed(InboxScreen.routeName);
//                     },
//                     child: Text('Login'),
//                     style: ElevatedButton.styleFrom(
//                         primary: Theme.of(context).primaryColor),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Text('¿No tienes una cuenta aún?'),
//                       TextButton(
//                         onPressed: () {},
//                         child: Text('Registrate'),
//                         style: TextButton.styleFrom(
//                             primary: Theme.of(context).primaryColor),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
