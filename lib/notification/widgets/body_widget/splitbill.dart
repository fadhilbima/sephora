/*import 'package:flutter/material.dart';

class SplitBillItem extends StatelessWidget {
  const SplitBillItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tagihan Split Bill',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '14:30',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 13),
          Row(
            children: [
              Container(
                height: 50,
                width: 200,
                child: UserStack(),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Nominal Tagihan',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Rp 1000.000',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}

class UserStack extends StatefulWidget {
  const UserStack({super.key});

  @override
  State<UserStack> createState() => _UserStackState();
}

class _UserStackState extends State<UserStack>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _moveRight;

  final movementLength = 20.0;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 600,
      ),
    );

    _moveRight = Tween<double>(
      begin: 0,
      end: movementLength,
    ).animate(_controller);
    super.initState();

    _controller.addListener(() {
      setState(() {});
    });

    _controller.forward();
  }

  final users = [
    <String, dynamic>{
      'image': 'assets/images/avatar.png',
    },
    <String, dynamic>{
      'image': 'assets/images/avatar.png',
    },
    <String, dynamic>{
      'image': 'assets/images/avatar.png',
    },
    <String, dynamic>{
      'image': 'assets/images/avatar.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final allMovementLength = users.length * movementLength;
    return Stack(
      children: users.reversed.toList().asMap().entries.map(
            (e) {
          final index = e.key;
          final value = e.value;
          return Positioned(
            left: _moveRightValue(index),
            child: UserStackItem(
              image: AssetImage(value['image']),
              active: index == users.length - 1,
            ),
          );
        },
      ).toList(),
    );
  }

  double _moveRightValue(int index) {
    final x = _moveRight.value * (users.length - index) - movementLength;
    return x < 0 ? 0 : x;
  }
}


class UserStackItem extends StatelessWidget {
  const UserStackItem({
    super.key,
    this.active = false,
    required this.image,
  });

  final bool active;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: active ? Theme.of(context).primaryColor : Colors.white,
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class SplitBillDisplay extends StatelessWidget {
  const SplitBillDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SplitBill()
      ],
    );
  }
}

class SplitBill extends StatelessWidget {
  const SplitBill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7.5),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('Split Bill'),
              ),
              Text('14 : 30')
            ],
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 200,
                color: Colors.yellow,
                child: AvatarTheWayOfWater(),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nominal Tagihan'),
                      Text('Rp 1.050.000')
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class AvatarTheWayOfWater extends StatefulWidget {
  const AvatarTheWayOfWater({Key? key}) : super(key: key);

  @override
  State<AvatarTheWayOfWater> createState() => _AvatarTheWayOfWaterState();
}

class _AvatarTheWayOfWaterState extends State<AvatarTheWayOfWater>
    with SingleTickerProviderStateMixin {
  late AnimationController animasi;
  late Animation gerak;
  final sejauh = 20.0;

  @override
  void initState() {
    animasi = AnimationController(
        vsync: this,
        duration: Duration(
            milliseconds: 600
        )
    );
    gerak = Tween<double>(
      begin: 0.0,
      end: sejauh,
    ).animate(animasi);
    super.initState();

    animasi.addListener(() {
      setState(() {

      });
    });
    animasi.forward();

  }

  final userMap = [
    <String, dynamic>{
      'image' : 'assets/images/avatar.png'
    },
    <String, dynamic>{
      'image' : 'assets/images/avatar.png'
    },
    <String, dynamic>{
      'image' : 'assets/images/avatar.png'
    },
    <String, dynamic>{
      'image' : 'assets/images/avatar.png'
    },
    <String, dynamic>{
      'image' : 'assets/images/avatar.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final allMove = userMap.length*sejauh;
    return Stack(
      children: userMap.reversed.toList().asMap().entries.map(
              (e) {
                final index = e.key;
                final value = e.value;
                return Positioned(
                  left: gerakValue(index),
                  child: Avatar(
                    image: AssetImage(value['image']),
                    activeAva: index == userMap.length - 1,
                  ),
                );
              }
      ).toList()
    );
  }
  double gerakValue(int index) {
    final x = gerak.value * (userMap.length - index) - sejauh;
    return x < 0 ? 0 : x;
  }
}

class Avatar extends StatelessWidget {
  const Avatar({Key? key, this.activeAva=false, required this.image}) : super(key: key);

  final bool activeAva;
  final ImageProvider image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(
              color: Colors.blue,
              width: 2
          ),
          shape: BoxShape.circle,
          image: DecorationImage(
              image: image,
              fit: BoxFit.cover
          )
      ),
    );
  }
}


