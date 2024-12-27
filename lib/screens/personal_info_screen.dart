import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';  // Ensure this is included

class PersonalInfoScreen extends StatelessWidget {
  // Function to launch email
  void _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'hasnainwaseem206@example.com',
    );
    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      throw 'Could not launch email';
    }
  }

  // Function to dial phone
  void _launchPhone() async {
    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      path: '+923096617582',
    );
    if (await canLaunch(phoneLaunchUri.toString())) {
      await launch(phoneLaunchUri.toString());
    } else {
      throw 'Could not launch phone';
    }
  }

  // Function to open a URL in a browser
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Info'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(12.0),
        children: [
          // Email Card
          _buildInfoCard(
            icon: Icons.email,
            title: 'Email',
            subtitle: 'hasnainwaseem206@example.com',
            onTap: _launchEmail,
          ),
          SizedBox(height: 16),

          // Phone Card
          _buildInfoCard(
            icon: Icons.phone,
            title: 'Phone',
            subtitle: '+92 3096617582',
            onTap: _launchPhone,
          ),
          SizedBox(height: 16),

          // LinkedIn Card
          _buildInfoCard(
            icon: Icons.business_center,
            title: 'LinkedIn',
            subtitle: 'linkedin.com/in/hasnainwaseem',
            onTap: () => _launchURL('https://www.linkedin.com/in/hasnainwaseem'),
          ),
          SizedBox(height: 16),

          // GitHub Card
          _buildInfoCard(
            icon: Icons.code,
            title: 'GitHub',
            subtitle: 'github.com/hasnainwaseem',
            onTap: () => _launchURL('https://github.com/hasnain-waseem'),
          ),
        ],
      ),
    );
  }

  // Reusable card widget
  Widget _buildInfoCard({required IconData icon, required String title, required String subtitle, required Function onTap}) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal, size: 32),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(subtitle),
        onTap: () => onTap(),
      ),
    );
  }
}
