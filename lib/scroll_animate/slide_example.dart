import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:flutteruitask/scroll_animate/confirm_info.dart';



class SlideExamples extends StatelessWidget {
  const SlideExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: context.scrollController,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 80),
          child: Column(
            children: [
              const SizedBox(height: 120),
              SlideInDown(
                globalKey: GlobalKey(),
                duration: 1.seconds,
                repeat: true,
                child: const CustomInfo(name: 'Slide In Down'),
              ),
              const SizedBox(height: 80),
              SlideInUp(
                globalKey: GlobalKey(),
                duration: 1.seconds,
                repeat: true,
                child: const CustomInfo(name: 'Slide In Up'),
              ),
              const SizedBox(height: 80),
              SlideInLeft(
                globalKey: GlobalKey(),
                duration: 1.seconds,
                repeat: true,
                child: const CustomInfo(name: 'Slide In Left'),
              ),
              const SizedBox(height: 80),
              SlideInRight(
                globalKey: GlobalKey(),
                duration: 1.seconds,
                repeat: true,
                child: const CustomInfo(name: 'Slide In Right'),
              ),
              const SizedBox(height: 80),
              const Divider(),
              const SizedBox(height: 80),
              SlideOutUp(
                globalKey: GlobalKey(),
                duration: 1.seconds,
                repeat: true,
                delay: 600.ms,
                child: const CustomInfo(name: 'Slide Out Up'),
              ),
              const SizedBox(height: 80),
              SlideOutLeft(
                globalKey: GlobalKey(),
                duration: 1.seconds,
                repeat: true,
                child: const CustomInfo(name: 'Slide Out Left'),
              ),
              const SizedBox(height: 80),
              SlideOutRight(
                globalKey: GlobalKey(),
                duration: 1.seconds,
                repeat: true,
                child: const CustomInfo(name: 'Slide Out Right'),
              ),
              const SizedBox(height: 80),
              SlideOutDown(
                globalKey: GlobalKey(),
                duration: 1.seconds,
                repeat: true,
                child: const CustomInfo(name: 'Slide Out Down'),
              ),
              const SizedBox(height: 420),
            ],
          ),
        ),
      ),
    );
  }
}