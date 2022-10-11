import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum/task2/bloc/user_bloc.dart';
import 'package:praktikum/task2/pages/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  late SharedPreferences registerData;
  String username = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    final userProvider = BlocProvider.of<UserBloc>(context);
    userProvider.add(Initial());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child : BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserChanged) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello, ${state.username}',
                      style: const TextStyle(fontSize: 30),
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      state.email,
                      style: const TextStyle(fontSize: 30),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        userProvider.add(IsRegister(newUser: true));
                        userProvider.add(RemoveName());
                        userProvider.add(RemoveEmail());
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UserRegister(),
                          ),
                        );
                      },
                      child: const Text('Sign Out'),
                    )
                  ],
                );
              }
              return const Text('Something when wrong');
            },
          ),
        // child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //   Consumer<UserProvider>(
        //     builder: (context, value, child) {
        //       return Text("Hello, ${value.username}", style: const TextStyle(fontSize: 30),);
        //     },
        //   ),
        //   Consumer<UserProvider>(
        //     builder: (context, value, child) {
        //       return Text(value.email, style: const TextStyle(fontSize: 20),);
        //     },
        //   ),
        //   const SizedBox(
        //     height: 20,
        //   ),
        //   ElevatedButton(
        //       onPressed: () {
        //         userProvider.isRegister(true);
        //         userProvider.deleteName(username);
        //         userProvider.deleteEmail(email);
        //         Navigator.pushReplacement(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => UserRegister(),
        //             ));
        //       },
        //       child: const Text("Sign Out"))
        // ]),
      ),
    );
  }
}
