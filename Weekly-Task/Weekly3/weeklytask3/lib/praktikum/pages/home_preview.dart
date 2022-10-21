// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:weeklytask3/gw/models/form_models.dart';

// import '../models/form_provider.dart';

// class HomePreview extends StatelessWidget {
//   const HomePreview({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final formProvider = FormProvider().formUser;
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Data User"),
//         ),
//         body: ListView.builder(
//           itemBuilder: (context, index) {
//             final form = FormModels(firstName: , lastName: lastName, email: email, note: note)
//           },));
//     // ListView.separated(
//     //     itemBuilder: (context, index) {
//     //       final form = FormModels(
//     //           firstName: inputFirstName.text,
//     //           lastName: inputLastName.text,
//     //           email: inputEmail.text,
//     //           note: inputHelp.text);
//     //       return buildItem(context, form);
//     //     },
//     //     separatorBuilder: (context, index) => const SizedBox(
//     //           height: 10,
//     //         ),
//     //     itemCount: formProvider.length));
//   }
// }
  

// //   Widget buildItem(BuildContext context, FormModels form) {
// //     return Consumer<FormProvider>(
// //       builder: (context, value, child) {
// //         return Text(value.formUser.toString());
// //       },
// //     );
// //   }
// // }