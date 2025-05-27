import 'package:flutter/material.dart';
import 'package:jobflex/widget/footer.dart';
import 'home.dart';

class Job {
  final String title;
  final String company;
  final String location;
  final String workingDay;
  final String time;
  final String payment;
  final String imageUrl;

  Job({
    required this.title,
    required this.company,
    required this.location,
    required this.workingDay,
    required this.time,
    required this.payment,
    required this.imageUrl,
  });
}

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Job> eventCrewJobs = [
      Job(
        title: 'Event Assistant',
        company: 'SoundWave Events',
        location: 'Negombo',
        workingDay: '10 April 2025',
        time: '5:00 PM - 11:00 PM',
        payment: 'Rs. 2,000/night',
        imageUrl: 'https://spotme.com/wp-content/uploads/2020/07/Hero-1.jpg',
      ),
      Job(
        title: 'Event Coordinator',
        company: 'City Events',
        location: 'Colombo',
        workingDay: '15 April 2025',
        time: '6:00 PM - 12:00 AM',
        payment: 'Rs. 2,500/night',
        imageUrl: 'https://spotme.com/wp-content/uploads/2020/07/Hero-1.jpg',
      ),
      Job(
        title: 'Event Staff',
        company: 'Prime Events',
        location: 'Kandy',
        workingDay: '20 April 2025',
        time: '7:00 PM - 1:00 AM',
        payment: 'Rs. 1,800/night',
        imageUrl: 'https://spotme.com/wp-content/uploads/2020/07/Hero-1.jpg',
      ),
    ];

    final List<Job> hospitalityJobs = [
      Job(
        title: 'Waiter',
        company: 'Grand Hotel',
        location: 'Colombo',
        workingDay: '25 April 2025',
        time: '6:00 PM - 11:00 PM',
        payment: 'Rs. 2,200/night',
        imageUrl: 'https://static.vecteezy.com/system/resources/previews/004/493/181/non_2x/hospital-building-for-healthcare-background-illustration-with-ambulance-car-doctor-patient-nurses-and-medical-clinic-exterior-free-vector.jpg',
      ),
      Job(
        title: 'Bartender',
        company: 'Ocean View Resort',
        location: 'Galle',
        workingDay: '30 April 2025',
        time: '7:00 PM - 12:00 AM',
        payment: 'Rs. 2,500/night',
        imageUrl: 'https://static.vecteezy.com/system/resources/previews/004/493/181/non_2x/hospital-building-for-healthcare-background-illustration-with-ambulance-car-doctor-patient-nurses-and-medical-clinic-exterior-free-vector.jpg',
      ),
    ];

    final List<Job> securityJobs = [
      Job(
        title: 'Security Guard',
        company: 'Secure Lanka',
        location: 'Colombo',
        workingDay: '1 May 2025',
        time: '8:00 PM - 6:00 AM',
        payment: 'Rs. 2,000/night',
        imageUrl: 'https://www.securitymagazine.com/ext/resources/images/security-guards-fp1170x658.jpg',
      ),
      Job(
        title: 'Security Officer',
        company: 'Vigilant Security',
        location: 'Kandy',
        workingDay: '5 May 2025',
        time: '7:00 PM - 5:00 AM',
        payment: 'Rs. 2,300/night',
        imageUrl: 'https://www.securitymagazine.com/ext/resources/images/security-guards-fp1170x658.jpg',
      ),
    ];

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
        color: Color(0xFFE8EAF6),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Event Crew',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ...eventCrewJobs.map((job) => JobCard(job: job, key: UniqueKey())),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Hospitality',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ...hospitalityJobs.map(
              (job) => JobCard(job: job, key: UniqueKey()),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Security',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ...securityJobs.map((job) => JobCard(job: job, key: UniqueKey())),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(30, 50, 92, 1),
      bottomNavigationBar: const Footer(),
    );
  }
}

class JobCard extends StatelessWidget {
  final Job job;

  const JobCard({Key? key, required this.job}) : super(key: key);

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
                      image: NetworkImage(job.imageUrl),
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
                        'Job Title: ${job.title}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Company: ${job.company}'),
                      Text('Location: ${job.location}'),
                      Text('Working Day: ${job.workingDay}'),
                      Text('Time: ${job.time}'),
                      Text('Payment: ${job.payment}'),
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
