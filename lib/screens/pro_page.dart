import 'package:flutter/material.dart';

class ProPage extends StatefulWidget {
  const ProPage({Key? key}) : super(key: key);

  @override
  _ProPageState createState() => _ProPageState();
}

class _ProPageState extends State<ProPage> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Center(
            child: Text(
              'zomato PRO',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.red,
            indicatorWeight: 3,
            controller: tabController,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            tabs: const <Tab>[
              Tab(text: '3 months'),
              Tab(text: '12 months'),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const <Widget>[
            ProCard(),
            Text('12 months'),
          ],
        ),
      ),
    );
  }
}

class ProCard extends StatelessWidget {
  const ProCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        OfferCard(),
      ],
    );
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 3,
        child: SizedBox(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(
                  'Pro Membership',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text('Up to 40% OFF on Dining'),
                const Text('Up to extra 30% OFF on delivery'),
                const Text('At 25,000+ restaurants'),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      onPressed: () {},
                      child: Center(
                        child: Column(
                          children: <Text>[
                            const Text(
                              'Join pro',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'at \$200 for 3 months',
                              style: TextStyle(
                                  color: Colors.grey.shade300, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  'This does not include Free Delivery on orders',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          height: MediaQuery.of(context).size.width - 150,
        ),
      ),
    );
  }
}
