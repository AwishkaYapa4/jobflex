import 'package:flutter/material.dart';
import 'package:jobflex/widget/constants.dart';
import 'package:jobflex/widget/footer.dart';
import 'categories.dart'; // Import the categories.dart file

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jobs'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          JobCard(
            jobTitle: 'Cafe Assistant',
            company: 'Brew Beans Coffee',
            location: 'Nugegoda',
            workingDay: '10 April 2025',
            time: '3:00 PM - 8:00 PM',
            payment: 'Rs. 1,500/day',
            imageUrl:
                'https://cdn3.careeraddict.com/uploads/article/58649/illustration-hotel-reception.jpg', // Hospitality
          ),
          JobCard(
            jobTitle: 'Event Assistant',
            company: 'SoundWave Events',
            location: 'Negombo',
            workingDay: '22 April 2025',
            time: '5:00 PM - 11:00 PM',
            payment: 'Rs. 2,000/night',
            imageUrl:
                'https://spotme.com/wp-content/uploads/2020/07/Hero-1.jpg', // Event
          ),
          JobCard(
            jobTitle: 'Bakery Assistant',
            company: 'Sweet Treats Cafe',
            location: 'Matara',
            workingDay: '22 and 23 April 2025',
            time: '7:00 AM - 1:00 PM',
            payment: 'Rs. 1,400/day',
            imageUrl:
                'https://cdn3.careeraddict.com/uploads/article/58649/illustration-hotel-reception.jpg', // Hospitality
          ),
          JobCard(
            jobTitle: 'Security Guard',
            company: 'Secure Zone Security',
            location: 'Galle',
            workingDay: '1 May 2025',
            time: '8:00 PM - 6:00 AM',
            payment: 'Rs. 2,000/night',
            imageUrl:
                'https://www.securitymagazine.com/ext/resources/images/security-guards-fp1170x658.jpg', // Security
          ),
          JobCard(
            jobTitle: 'Event Coordinator',
            company: 'City Events Planners',
            location: 'Colombo',
            workingDay: '5 May 2025',
            time: '10:00 AM - 6:00 PM',
            payment: 'Rs. 2,500/day',
            imageUrl:
                'https://spotme.com/wp-content/uploads/2020/07/Hero-1.jpg', // Event
          ),
          JobCard(
            jobTitle: 'Barista',
            company: 'Coffee Bliss Cafe',
            location: 'Nugegoda',
            workingDay: '8 May 2025',
            time: '2:00 PM - 9:00 PM',
            payment: 'Rs. 1,600/day',
            imageUrl:
                'https://cdn3.careeraddict.com/uploads/article/58649/illustration-hotel-reception.jpg', // Hospitality
          ),
          JobCard(
            jobTitle: 'Delivery Driver',
            company: 'Swift Delivery Services',
            location: 'Colombo',
            workingDay: '15 May 2025',
            time: '6:00 PM - 12:00 AM',
            payment: 'Rs. 2,300/night',
            imageUrl:
                'https://cdn3.careeraddict.com/uploads/article/58649/illustration-hotel-reception.jpg', // Hospitality
          ),
          JobCard(
            jobTitle: 'Promoter',
            company: 'Prime Promotions',
            location: 'Kandy',
            workingDay: '18 May 2025',
            time: '10:00 AM - 4:00 PM',
            payment: 'Rs. 1,700/day',
            imageUrl:
                'https://spotme.com/wp-content/uploads/2020/07/Hero-1.jpg', // Event
          ),
          JobCard(
            jobTitle: 'Cashier',
            company: 'Quick Mart Supermarket',
            location: 'Galle',
            workingDay: '21 May 2025',
            time: '8:00 AM - 3:00 PM',
            payment: 'Rs. 1,500/day',
            imageUrl:
                'https://cdn3.careeraddict.com/uploads/article/58649/illustration-hotel-reception.jpg', // Hospitality
          ),
          JobCard(
            jobTitle: 'Customer Service Representative',
            company: 'HelpLine Customer Care',
            location: 'Nugegoda',
            workingDay: '27 May 2025',
            time: '10:00 AM - 6:00 PM',
            payment: 'Rs. 2,400/day',
            imageUrl:
                'https://cdn3.careeraddict.com/uploads/article/58649/illustration-hotel-reception.jpg', // Hospitality
          ),
          JobCard(
            jobTitle: 'Construction Worker',
            company: 'Build It Right Construction',
            location: 'Nugegoda',
            workingDay: '14 June 2025',
            time: '7:00 AM - 5:00 PM',
            payment: 'Rs. 1,800/day',
            imageUrl:
                'https://www.securitymagazine.com/ext/resources/images/security-guards-fp1170x658.jpg', // Security
          ),
        ],
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}

class JobCard extends StatelessWidget {
  final String jobTitle;
  final String company;
  final String location;
  final String workingDay;
  final String time;
  final String payment;
  final String imageUrl;

  const JobCard({
    Key? key,
    required this.jobTitle,
    required this.company,
    required this.location,
    required this.workingDay,
    required this.time,
    required this.payment,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: const Color.fromARGB(
        255,
        210,
        226,
        255,
      ), // Set the card color to light blue
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Make the image circular
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrl),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobTitle,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Company: $company'),
                      Text('Location: $location'),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.pink),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text('Working Day: $workingDay'),
            Text('Time: $time'),
            Text('Payment: $payment'),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: JPrimaryColor,
                    foregroundColor: JPrimaryLightColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Apply'),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor:JPrimaryColor,
                    foregroundColor: JPrimaryLightColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Saved'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
