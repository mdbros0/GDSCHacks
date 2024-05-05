import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAiiTT_5VzMypvqwi9fc239iijKW0JnrkE",
            authDomain: "gdschacks-32b57.firebaseapp.com",
            projectId: "gdschacks-32b57",
            storageBucket: "gdschacks-32b57.appspot.com",
            messagingSenderId: "499655304559",
            appId: "1:499655304559:web:7cb2412d8375b633acf49a",
            measurementId: "G-XBEKB1Q10X"));
  } else {
    await Firebase.initializeApp();
  }
}
