import 'package:flutter/material.dart';
import 'package:login_tasarim/girildi.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  var kullaniciAdi = TextEditingController();
  var kullaniciSifre = TextEditingController();

  final String B1 = "Mahsun";
  final int B2 = 1234;

  @override
  Widget build(BuildContext context) {
    var ekranBilgi = MediaQuery.of(context);
    final double ekranYukseklik = ekranBilgi.size.height;
    final double ekranGenislik = ekranBilgi.size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(ekranYukseklik / 30),
                child: SizedBox(
                  width: ekranGenislik / 4,
                  child: Image.asset(
                    "resimler/user.png",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: ekranYukseklik / 30,
                    right: ekranYukseklik / 30,
                    top: ekranYukseklik / 30,
                    bottom: ekranYukseklik / 40),
                child: TextField(
                  controller: kullaniciAdi,
                  decoration: InputDecoration(
                      hintText: "Kullanici Adi",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: ekranYukseklik / 30,
                    right: ekranYukseklik / 30,
                    top: ekranYukseklik / 40,
                    bottom: ekranYukseklik / 30),
                child: TextField(
                  controller: kullaniciSifre,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Sifre",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYukseklik / 30),
                child: SizedBox(
                  width: ekranGenislik / 1.3,
                  height: ekranYukseklik / 12,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () {
                        if (B1 == kullaniciAdi.text &&
                            B2 == int.tryParse(kullaniciSifre.text)) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Girildi(
                                    kullanici_Adi: kullaniciAdi.text,
                                    kullanici_Sifre:
                                        int.parse(kullaniciSifre.text)),
                              ));
                        }

                        //debugPrint("Giriş yapıldı");
                      },
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Text("Yardım ?")
            ],
          ),
        ),
      ),
    );
  }
}
