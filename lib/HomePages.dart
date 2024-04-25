import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Widgets/loading_page.dart';
// import 'package:url_launcher/url_launcher.dart';


class PortfolioHomePage extends StatefulWidget {
  bool? isDarkMode=false;
  PortfolioHomePage({this.isDarkMode});

  @override
  _PortfolioHomePageState createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                // color: (widget.isDarkMode == true )? Colors.white : Colors.black ,
                borderRadius: BorderRadius.zero,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                    spreadRadius: 5, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: Offset(0, 3), // Offset of the shadow
                  ),
                ],// Adjust the radius as needed
                image: DecorationImage(
                  image: AssetImage('Image/My_Image.png'),
                  fit: BoxFit.contain
                ),
              ),
            ),

            // CircleAvatar(
            //   radius: 80,
            //   backgroundImage: AssetImage('Image/My_Image.png'),
            // ),
            SizedBox(height: 20),
            Text(
              'Apurbo Sarker',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('View Portfolio'),
            ),
            SizedBox(height: 20),
            // Social Media Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // Handle Facebook tap
                  },
                  child: Icon(
                    FontAwesomeIcons.facebook,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    // Handle Instagram tap
                  },
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    size: 30,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () async{
                    final url = Uri.parse("https://github.com/Apurbosarker");
                    LoadingPage(); // Assuming LoadingPage is a function that shows a loading indicator.
                    if (await launchUrl(
                      url,
                      mode: LaunchMode.inAppWebView,
                    )) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.github,
                    size: 30,
                    color: (widget.isDarkMode == true )? Colors.white : Colors.black ,
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    // Handle Gmail tap
                  },
                  child: Icon(
                    FontAwesomeIcons.envelope,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }

}
