import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDGF6C1twecECWXEbiyMjFARsiqB8xslJQ",
            authDomain: "turnosbd-202f4.firebaseapp.com",
            projectId: "turnosbd-202f4",
            storageBucket: "turnosbd-202f4.appspot.com",
            messagingSenderId: "945820173802",
            appId: "1:945820173802:web:0bf94bee45787af0871e93",
            measurementId: "G-ZHFBZLRBXM"));
  } else {
    await Firebase.initializeApp();
  }
}
