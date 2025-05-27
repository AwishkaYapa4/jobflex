import 'package:flutter/material.dart';
import 'package:jobflex/screan/home.dart';
import 'package:jobflex/widget/footer.dart'; // Import the home screen

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Categories', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xFFE8EAF6), // Approximate background color
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Event Crew',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            JobCard(),
            JobCard(),
            JobCard(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Hospitality',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            JobCard(),
            JobCard(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Security',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            JobCard(),
            JobCard(),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(30, 50, 92, 1),
      bottomNavigationBar: const Footer(),
    );
  }
}

class JobCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://via.placeholder.com/100',
                      ), // Replace with your image URL
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Job Title: Event Assistant',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Company: SoundWave Events'),
                      Text('Location: Negombo'),
                      Text('Working Day: 10 April 2025'),
                      Text('Time: 5:00 PM - 11:00 PM'),
                      Text('Payment: Rs. 2,000/night'),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.pink),
                  onPressed: () {
                    // Handle favorite button press
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo[900],
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Apply'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[400],
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Saved'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
