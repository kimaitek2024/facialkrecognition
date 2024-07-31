import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB9sFGIOXB5wcU1258KGXbUSp27Bhtlx_g",
            authDomain: "facial-recognition-crxq2y.firebaseapp.com",
            projectId: "facial-recognition-crxq2y",
            storageBucket: "facial-recognition-crxq2y.appspot.com",
            messagingSenderId: "978824283709",
            appId: "1:978824283709:web:d990ea7e2de9c5c42b8c54"));
  } else {
    await Firebase.initializeApp();
  }
}
