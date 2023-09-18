part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static const String routeName = '/profile';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Initialize a default user
  UserProfile _user = UserProfile(
    name: 'Daniel Aprillio',
    job: 'Movie Reviewer',
    aboutMe:
        'I love watching movies, especially action movies. So I made this app to help me find the best movies to watch.',
    profilePictureUrl:
        'https://pbs.twimg.com/profile_images/1544955480816369664/tbdn5Cc8_400x400.jpg',
  );

  TextEditingController _nameController = TextEditingController();
  TextEditingController _jobController = TextEditingController();
  TextEditingController _aboutMeController = TextEditingController();
  TextEditingController _profilePictureUrlController = TextEditingController();

  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _nameController.text = _user.name;
    _jobController.text = _user.job;
    _aboutMeController.text = _user.aboutMe;
    _profilePictureUrlController.text = _user.profilePictureUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              setState(() {
                _isEditing = true;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage(_user.profilePictureUrl),
              ),
            ),
            const SizedBox(height: 20.0),
            _isEditing
                ? TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: 'Name'),
                  )
                : Center(
                    child: Text(
                      _user.name,
                      style: const TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ),
            const SizedBox(height: 12.0),
            _isEditing
                ? TextFormField(
                    controller: _jobController,
                    decoration: const InputDecoration(labelText: 'Job'),
                  )
                : Center(
                    child: Text(
                      _user.job,
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ),
            const SizedBox(height: 12.0),
            _isEditing
                ? TextFormField(
                    controller: _aboutMeController,
                    decoration: const InputDecoration(labelText: 'About Me'),
                  )
                : Center(
                    child: Text(
                      '\n\n- About Me - \n\n${_user.aboutMe}',
                      style: const TextStyle(fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
            const SizedBox(height: 12.0),
            _isEditing
                ? TextFormField(
                    controller: _profilePictureUrlController,
                    decoration:
                        const InputDecoration(labelText: 'Profile Picture URL'),
                  )
                : const SizedBox(),
            const SizedBox(height: 20.0),
            _isEditing
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Save changes
                          setState(() {
                            _user.name = _nameController.text;
                            _user.job = _jobController.text;
                            _user.aboutMe = _aboutMeController.text;
                            _user.profilePictureUrl =
                                _profilePictureUrlController.text;
                            _isEditing = false;
                          });
                        },
                        child: const Text('Save'),
                      ),
                      const SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isEditing = false;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                        ),
                        child: const Text('Cancel'),
                      ),
                    ],
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
