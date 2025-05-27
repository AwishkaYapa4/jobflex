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

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int _selectedIndex = 0;

  // You'll need to create separate lists for closed and saved jobs,
  // and functions to fetch/populate them.  For now, I'll just reuse
  // the existing job lists.
  List<Job> _recentJobs = [];
  List<Job> _closedJobs = [];
  List<Job> _savedJobs = [];

  @override
  void initState() {
    super.initState();
    // Initialize the recent jobs list (or fetch from a data source)
    _recentJobs = [
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
    ];

    _closedJobs = [
      Job(
        title: 'Security Guard',
        company: 'Secure Lanka',
        location: 'Colombo',
        workingDay: '1 May 2025',
        time: '8:00 PM - 6:00 AM',
        payment: 'Rs. 2,000/night',
        imageUrl:
            'https://www.securitymagazine.com/ext/resources/images/security-guards-fp1170x658.jpg',
      ),
    ];



    _savedJobs = [
      Job(
        title: 'Waiter',
        company: 'Grand Hotel',
        location: 'Colombo',
        workingDay: '25 April 2025',
        time: '6:00 PM - 11:00 PM',
        payment: 'Rs. 2,200/night',
        imageUrl:
            'https://cdn3.careeraddict.com/uploads/article/58649/illustration-hotel-reception.jpg',
      ),
    ];
  }

  Widget _buildJobList(List<Job> jobs) {
    return ListView.builder(
      itemCount: jobs.length,
      itemBuilder: (context, index) {
        return JobCard(job: jobs[index], key: UniqueKey());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Job> currentJobs;
    String title;

    switch (_selectedIndex) {
      case 0:
        currentJobs = _recentJobs;
        title = 'Recent Jobs';
        break;
      case 1:
        currentJobs = _closedJobs;
        title = 'Closed Jobs';
        break;
      case 2:
        currentJobs = _savedJobs;
        title = 'Saved Jobs';
        break;
      default:
        currentJobs = _recentJobs;
        title = 'Recent Jobs';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(title, style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xFFE8EAF6),
        child: _buildJobList(currentJobs),
      ),
      backgroundColor: const Color.fromRGBO(30, 50, 92, 1),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Recent'),
          BottomNavigationBarItem(icon: Icon(Icons.lock), label: 'Closed'),
          BottomNavigationBarItem(icon: Icon(Icons.save), label: 'Saved'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      //bottomNavigationBar: const Footer(),
    );
  }
}

class JobCard extends StatelessWidget {
  final Job job;

  const JobCard({super.key, required this.job});

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
