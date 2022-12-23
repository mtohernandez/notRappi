import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  Widget _buildInputs() {
    return Column(
      children: const [
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            fillColor: Colors.white,
            filled: true,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            fillColor: Colors.white,
            filled: true,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 3.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/image/Hamburguer.png"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold),
              "NOT",
            ),
            const Text(
              "Rappi",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Fast food & healthy too",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 90,
            ),
            _buildInputs(),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xffFF2214)),
                minimumSize:
                    MaterialStateProperty.all<Size>(Size.fromHeight(50)),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
