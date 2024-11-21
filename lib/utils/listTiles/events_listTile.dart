import 'package:flutter/material.dart';

import '../constants/app_images.dart';
import '../constants/app_textstyle.dart';

class Events {
  final String heading;
  final String title;
  final String subTitle;

  final Color? backgroundColor;
  final String imagePath;
  final String time;

  Events({
    required this.heading,
    required this.title,
    required this.subTitle,
    required this.imagePath,
    required this.time,
    this.backgroundColor,
  });
}

class UpComingListTile extends StatelessWidget {
  final List<Events> eventslist = [
    Events(
      heading: 'World Art Day',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Upcoming',
      imagePath: AppImages.pic1,
      time: '30 min ago',
      backgroundColor: const Color(0xFF0B7CE4),
    ),
    Events(
      heading: 'Inter-House Sport',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Upcoming',
      imagePath: AppImages.pic2,
      time: '30 min ago',
      backgroundColor: const Color(0xFF0B7CE4),
    ),
    Events(
      heading: 'Open Day',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Upcoming',
      imagePath: AppImages.pic3,
      time: '30 min ago',
      backgroundColor: const Color(0xFF0B7CE4),
    ),
    Events(
      heading: 'IT Event',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Upcoming',
      imagePath: AppImages.pic1,
      time: '30 min ago',
      backgroundColor: const Color(0xFF0B7CE4),
    ),
    Events(
      heading: 'Red Cross Meeting',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Upcoming',
      imagePath: AppImages.pic2,
      time: '30 min ago',
      backgroundColor: const Color(0xFF0B7CE4),
    ),
  ];

  UpComingListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: eventslist.length,
      itemBuilder: (context, index) {
        final events = eventslist[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    events.time,
                    style: rStyleBlack12400.copyWith(
                      color: const Color(0xFF4F4F4F),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: Image.asset(
                        events.imagePath,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //TITLE
                      Text(
                        events.heading, // Access the title
                        style: rStyleBlack14600.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 3),

                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          events.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: rStyleBlack12400.copyWith(
                            color: const Color(0xFF828282),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 3,
                      ),

                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: events.backgroundColor,
                        ),
                        child: Text(
                          events.subTitle,
                          style: rStyleBlack10600.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 8),
            ],
          ),
        );
      },
    );
  }
}

// onGoing Events

class OnGoingListTile extends StatelessWidget {
  final List<Events> eventslist = [
    Events(
      heading: 'World Art Day',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Ongoing',
      imagePath: AppImages.pic1,
      time: '30 min ago',
      backgroundColor: const Color(0xFF077112),
    ),
    Events(
      heading: 'Inter-House Sport',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Ongoing',
      imagePath: AppImages.pic2,
      time: '30 min ago',
      backgroundColor: const Color(0xFF077112),
    ),
    Events(
      heading: 'Open Day',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Ongoing',
      imagePath: AppImages.pic3,
      time: '30 min ago',
      backgroundColor: const Color(0xFF077112),
    ),
    Events(
      heading: 'IT Event',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Ongoing',
      imagePath: AppImages.pic1,
      time: '30 min ago',
      backgroundColor: const Color(0xFF077112),
    ),
    Events(
      heading: 'Red Cross Meeting',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Ongoing',
      imagePath: AppImages.pic2,
      time: '30 min ago',
      backgroundColor: const Color(0xFF077112),
    ),
  ];

  OnGoingListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: eventslist.length,
      itemBuilder: (context, index) {
        final events = eventslist[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    events.time,
                    style: rStyleBlack12400.copyWith(
                      color: const Color(0xFF4F4F4F),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: Image.asset(
                        events.imagePath,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //TITLE
                      Text(
                        events.heading, // Access the title
                        style: rStyleBlack14600.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 3),

                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          events.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: rStyleBlack12400.copyWith(
                            color: const Color(0xFF828282),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 3,
                      ),

                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: events.backgroundColor,
                        ),
                        child: Text(
                          events.subTitle,
                          style: rStyleBlack10600.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 8),
            ],
          ),
        );
      },
    );
  }
}

// Past Events

class PastEventListTile extends StatelessWidget {
  final List<Events> eventslist = [
    Events(
      heading: 'World Art Day',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Past',
      imagePath: AppImages.pic1,
      time: '30 min ago',
      backgroundColor: const Color(0xFFB0270B),
    ),
    Events(
      heading: 'Inter-House Sport',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Past',
      imagePath: AppImages.pic2,
      time: '30 min ago',
      backgroundColor: const Color(0xFFB0270B),
    ),
    Events(
      heading: 'Open Day',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Past',
      imagePath: AppImages.pic3,
      time: '30 min ago',
      backgroundColor: const Color(0xFFB0270B),
    ),
    Events(
      heading: 'IT Event',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Past',
      imagePath: AppImages.pic1,
      time: '30 min ago',
      backgroundColor: const Color(0xFFB0270B),
    ),
    Events(
      heading: 'Red Cross Meeting',
      title: 'Up to 160 characters are considered one message. Anything',
      subTitle: 'Past',
      imagePath: AppImages.pic2,
      time: '30 min ago',
      backgroundColor: const Color(0xFFB0270B),
    ),
  ];

  PastEventListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: eventslist.length,
      itemBuilder: (context, index) {
        final events = eventslist[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    events.time,
                    style: rStyleBlack12400.copyWith(
                      color: const Color(0xFF4F4F4F),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: Image.asset(
                        events.imagePath,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //TITLE
                      Text(
                        events.heading, // Access the title
                        style: rStyleBlack14600.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 3),

                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          events.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: rStyleBlack12400.copyWith(
                            color: const Color(0xFF828282),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 3,
                      ),

                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: events.backgroundColor,
                        ),
                        child: Text(
                          events.subTitle,
                          style: rStyleBlack10600.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 8),
            ],
          ),
        );
      },
    );
  }
}
