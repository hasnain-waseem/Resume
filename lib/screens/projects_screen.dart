import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
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
        child: Column(
          children: [
            _buildProjectCard(
              title: 'Todo List App',
              description:
                  'A To-Do List App project is a simple application that helps users manage their tasks.',
              color: Colors.teal,
            ),
            _buildProjectCard(
              title: 'Personal CV App',
              description:
                  'A CV App project where I showcase my skills, experience, and projects in a structured, easy-to-read format.',
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectCard({required String title, required String description, required Color color}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          title: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color),
          ),
          subtitle: Text(
            description,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
