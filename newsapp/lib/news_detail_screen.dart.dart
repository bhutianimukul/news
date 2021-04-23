import "package:flutter/material.dart";



class NewsDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  // ProductDetailScreen(this.title,this.price);

 
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(

      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                '',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "\dummy",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(
                10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'dummy.desc',
                    // textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                    softWrap: true,
                  ),
                  Text(
                    "Author",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.grey),
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
