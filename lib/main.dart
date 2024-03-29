import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hungreez/Controller/CafeController.dart';
import 'package:hungreez/Controller/CartController.dart';
import 'package:hungreez/Controller/PickupController.dart';
import 'package:hungreez/Views/AuthScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  CartController controller = Get.put(CartController());
  CafeController cafeController = Get.put(CafeController(id: "".obs, name: ""));
  PickupController pickupController = Get.put(PickupController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    );
  }
}
