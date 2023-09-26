import '../constanta/imports.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final List<Tab> tabs = [
    const Tab(
      text: "About",
      icon: Icon(
        Icons.account_box,
      ),
    ),
    const Tab(
      text: "Contact",
      icon: Icon(
        Icons.contact_page,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Constanta.primaryColor,
          titleTextStyle: const TextStyle(
            color: Colors.white,
          ),
          toolbarHeight: 300,
          title: Center(
            child: Column(
              children: [
                profilePhotos(),
                profileName(),
                hobbies(),
                stats(),
              ],
            ),
          ),
          bottom: TabBar(
            tabs: tabs,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        body: TabBarView(
          children: [
            const SingleChildScrollView(
              child: AboutSection(),
            ),
            SingleChildScrollView(
              child: contactSection(),
            ),
          ],
        ),
      ),
    );
  }

  Padding hobbies() {
    return const Padding(
      padding: EdgeInsets.only(
        top: 5.0,
        bottom: 5.0,
      ),
      child: Text(
        "Traveller - Dreamer - Fighter",
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Padding profileName() {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Text(
        "Asep Saputra",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Padding stats() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                "Photos",
                style: TextStyle(
                  color: Constanta.profileTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "160",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Followers",
                style: TextStyle(
                  color: Constanta.profileTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "1657",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Following",
                style: TextStyle(
                  color: Constanta.profileTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "9",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container profilePhotos() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      width: 135,
      height: 135,
      alignment: Alignment.center,
      child: const CircleAvatar(
        radius: 65,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(
          "https://picsum.photos/300/300",
        ),
      ),
    );
  }
}
