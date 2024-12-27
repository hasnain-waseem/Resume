import 'package:flutter/material.dart';

class SkillsScreen extends StatefulWidget {
  @override
  _SkillsScreenState createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  // Skill progress values (0.0 to 1.0)
  double flutterProgress = 0.7;
  double databaseProgress = 0.5;
  double htmlCssJsProgress = 0.6;
  double gitProgress = 0.8;
  double cCplusplusProgress = 0.4;
  double networkingProgress = 0.3;
  double comunicationProgress = 0.9;
  double fastLearningProgress = 0.7;

  // Method to update progress
  void updateProgress(String skill) {
    setState(() {
      if (skill == 'Flutter' && flutterProgress < 1.0) {
        flutterProgress += 0.1;
        if (flutterProgress > 1.0) {
          flutterProgress = 1.0;
        } else if (skill == 'Database' && databaseProgress < 1.0) {
          databaseProgress += 0.1;
        } else if (skill == 'HTML & CSS & JS' && htmlCssJsProgress < 1.0) {
          htmlCssJsProgress += 0.1;
        } else if (skill == 'Git/GitHub' && gitProgress < 1.0) {
          gitProgress += 0.1;
        } else if (skill == 'C/C++' && cCplusplusProgress < 1.0) {
          cCplusplusProgress += 0.1;
        } else if (skill == 'Computer Networking' && networkingProgress < 1.0) {
          networkingProgress += 0.1;
        } else if (skill == 'Communication' && comunicationProgress < 1.0) {
          comunicationProgress += 0.1;
        } else if (skill == 'Fast Learning' && fastLearningProgress < 1.0) {
          fastLearningProgress += 0.1;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade50, Colors.teal.shade100],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildSkillProgress('Flutter', flutterProgress),
                  _buildSkillProgress('Database', databaseProgress),
                  _buildSkillProgress('HTML & CSS & JS', htmlCssJsProgress),
                  _buildSkillProgress('Git/GitHub', gitProgress),
                  _buildSkillProgress('C/C++', cCplusplusProgress),
                  _buildSkillProgress(
                      'Computer Networking', networkingProgress),
                  _buildSkillProgress(
                      'Communication Skill', comunicationProgress),
                  _buildSkillProgress('Fast Learning', fastLearningProgress),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Skill Progress Widget with LinearProgressIndicator
  Widget _buildSkillProgress(String skillName, double progressValue) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              skillName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            LinearProgressIndicator(
              value: progressValue,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${(progressValue * 100).toInt()}%'),
                ElevatedButton(
                  onPressed: () => updateProgress(skillName),
                  child: Text('Improve'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
