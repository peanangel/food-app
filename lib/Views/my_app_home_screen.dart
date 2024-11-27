import 'package:demo1/Utils/constants.dart';
import 'package:demo1/Widgets/banner.dart';
import 'package:demo1/Widgets/my_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyAppHomeScreen extends StatefulWidget {
  const MyAppHomeScreen({super.key});

  @override
  State<MyAppHomeScreen> createState() => _MyAppHomeScreenState();
}

class _MyAppHomeScreenState extends State<MyAppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(child: SingleChildScrollView(child: Column(
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15)
          ,child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            headerParts(),
            mySearchBar(),
            const BannerToExplore(),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),
            child: Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),)
            ],
          ),)
        ],
      ),)),
    );
  }

  Padding mySearchBar() {
    return Padding(padding: EdgeInsets.symmetric(vertical: 22),
          child: TextField(
            decoration: InputDecoration(filled: true,
            prefixIcon: const Icon(Iconsax.search_normal),
            fillColor: Colors.white,
            border: InputBorder.none,hintText: "Search any recipes",
            hintStyle: const TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
            ),
            ),
          )
          );
  }

  Row headerParts() {
    return Row(
            children: [
              const Text("What are you\ncooking today?",
              style: TextStyle(fontSize: 32,
              fontWeight: FontWeight.bold,height: 1),),
              const Spacer(),
              MyIconButton(icon: Iconsax.notification, pressed: (){}),
              

            ],
          );
  }
}