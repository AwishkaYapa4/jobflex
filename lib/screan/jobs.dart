import 'package:flutter/material.dart';

class JobsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Browse Jobs')),
      body: ListView(
        children: [
          JobCategory(category: 'Event', jobCount: 20),
          JobList(
            category: 'Event',
            jobs: List.generate(20, (index) => 'Event Job ${index + 1}'),
          ),
          JobCategory(category: 'Security', jobCount: 20),
          JobList(
            category: 'Security',
            jobs: List.generate(20, (index) => 'Security Job ${index + 1}'),
          ),
          JobCategory(category: 'Hospitality', jobCount: 20),
          JobList(
            category: 'Hospitality',
            jobs: List.generate(20, (index) => 'Hospitality Job ${index + 1}'),
          ),
        ],
      ),
    );
  }
}

class JobCategory extends StatelessWidget {
  final String category;
  final int jobCount;

  const JobCategory({Key? key, required this.category, required this.jobCount})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        '$category Jobs ($jobCount)',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class JobList extends StatelessWidget {
  final String category;
  final List<String> jobs;

  const JobList({Key? key, required this.category, required this.jobs})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: jobs.map((job) => JobCard(jobTitle: job)).toList());
  }
}

class JobCard extends StatelessWidget {
  final String jobTitle;

  const JobCard({Key? key, required this.jobTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(jobTitle),
      ),
    );
  }
}
