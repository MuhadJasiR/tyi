import 'package:flutter/material.dart';

class FooterCard extends StatelessWidget {
  const FooterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        height: 113,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFFEEE8FF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "PEST CONTROL",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "YOUTUBE INFLUENCER",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Unforgettable",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
                Container(
                  width: 1.0,
                  height: 20,
                  color: Colors.black,
                ),
                const Text(
                  "Unforgettable",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mail,
                      color: Colors.purple.shade900,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.phone,
                      color: Colors.purple.shade900,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
