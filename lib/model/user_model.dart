class User extends Equatable{
  final int id;
  final String name;
  final int age;
  final List<String>assetPaths;
  final String bio;
  final String jobTitle;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.assetPaths,
    required this.bio,
    required this.jobTitle,
  });
  @override
  List<Object?> get props =>[
    id,
    name,
    age,
    assetPaths,
    bio,
    jobTitle,
  ];

  static List<User> users=[
    User(
      id: 1,
      name: 'Archi',
      age: 20,
      assetPaths: [
        'assets/images/snap1.jpg',
        'assets/images/pic11.png',
        'assets/images/snap2.jpg',
        'assets/images/img4.jpg',
      ],
      jobTitle: 'Mbbs',
      bio: 'Very Social girl with 50 % pizza lover and 50% dog lover'
    ),
    User(
      id: 2,
      name: "Archi",
      age: 21,
        assetPaths: [
          'assets/images/snap1.jpg',
          'assets/images/pic11.png',
          'assets/images/snap2.jpg',
          'assets/images/snap2.jpg',
        ],
        jobTitle: 'Mbbs  ',
        bio: 'Very Social girl with 50 % pizza lover and 50% dog lover'
    ),
    User(
        id: 2,
        name: "Archi",
        age: 21,
        assetPaths: [
          'assets/images/snap1.jpg',
          'assets/images/pic11.png',
          'assets/images/snap2.jpg',
        ],
        jobTitle: 'Model ',
        bio: 'Very Social girl with 50 % pizza lover and 50% dog lover'
    ),
    User(
        id: 2,
        name: "Archi",
        age: 21,
        assetPaths: [
          'assets/images/snap1.jpg',
          'assets/images/pic11.png',
          'assets/images/snap2.jpg',
        ],
        jobTitle: 'Model ',
        bio: 'Very Social girl with 50 % pizza lover and 50% dog lover'
    ),
    User(
        id: 2,
        name: "Archi",
        age: 21,
        assetPaths: [
          'assets/images/snap1.jpg',
          'assets/images/pic11.png',
          'assets/images/snap2.jpg',
        ],
        jobTitle: 'Model ',
        bio: 'Very Social girl with 50 % pizza lover and 50% dog lover'
    ),
    User(
        id: 2,
        name: "Archi",
        age: 21,
        assetPaths: [
          'assets/images/snap1.jpg',
          'assets/images/pic11.png',
          'assets/images/snap2.jpg',
        ],
        jobTitle: 'Model ',
        bio: 'Very Social girl with 50 % pizza lover and 50% dog lover'
    ),
    User(
        id: 2,
        name: "Archi",
        age: 21,
        assetPaths: [
          'assets/images/snap1.jpg',
          'assets/images/pic11.png',
          'assets/images/snap2.jpg',
        ],
        jobTitle: 'Model ',
        bio: 'Very Social girl with 50 % pizza lover and 50% dog lover'
    ),
  ];
}

class Equatable {
}
