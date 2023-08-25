import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'HbDQ7n6xIPM',
    params: const YoutubePlayerParams(showFullscreenButton: true),
    autoPlay: false,
  );

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  ' The story behind Shake Shack',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Shake Shack is an American fast casual restaurant chain based in New York City. It started out as a hot dog cart inside Madison Square Park in 2001, and its popularity steadily grew. In 2004, it received a permit to open a permanent kiosk within the park, expanding its menu from New York style hot dogs to one with hamburgers, hot dogs, fries and its namesake milkshakes.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Since its founding, it has been one of the fastest-growing food chains, eventually becoming a public company filing for an initial public offering of stock in late 2014. The offering priced on January 29, 2015; the initial price of its shares was at 21, immediately rising by 123% to 47 on their first day of trading.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Shake Shack Inc. owns and operates over 400 locations globally.',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Container(
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
                clipBehavior: Clip.hardEdge,
                child: YoutubePlayer(controller: _controller, aspectRatio: 16 / 9),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
