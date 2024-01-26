import 'package:flutter/material.dart';
import 'package:flutter_voice_assistant/constants/fontfamily.dart';
import 'package:flutter_voice_assistant/theme/pallete.dart';
import 'package:flutter_voice_assistant/widgets/feature_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Voice Assistant'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 153,
                  width: 153,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/virtualAssistant.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor,
              ),
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: Radius.zero,
                bottomRight: Radius.zero,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Good Morning, How can I help you?',
                style: TextStyle(
                  fontFamily: FontFamily.fontFamily,
                  color: Pallete.mainFontColor,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          //
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 10, left: 22),
            child: const Text(
              'Here are few features',
              style: TextStyle(
                fontFamily: FontFamily.fontFamily,
                color: Pallete.mainFontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // features list
          const Column(
            children: [
              FeatureBox(
                color: Pallete.firstSuggestionBoxColor,
                headerText: 'ChatGPT',
                bodyText:
                    'A smarter way to stay organized and informed with ChatGPT',
              ),
              FeatureBox(
                color: Pallete.secondSuggestionBoxColor,
                headerText: 'Dall-E',
                bodyText:
                    'Get inspired and stay creative with your personal assistant powered by Dall-E',
              ),
              FeatureBox(
                color: Pallete.thirdSuggestionBoxColor,
                headerText: "Smart Voice Assistant",
                bodyText:
                    'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: const Icon(
          Icons.mic,
        ),
      ),
    );
  }
}
