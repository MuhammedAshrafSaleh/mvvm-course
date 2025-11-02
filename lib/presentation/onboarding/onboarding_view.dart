import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvvm_course/presentation/resources/assets_manager.dart';
import 'package:mvvm_course/presentation/resources/color_manager.dart';
import 'package:mvvm_course/presentation/resources/strings_manager.dart';
import 'package:mvvm_course/presentation/resources/values_manager.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  late final List<SliderObject> _list = _getSliderData();
  List<SliderObject> _getSliderData() => [
    SliderObject(
      title: AppStrings.onBoardingTitle1,
      subTitle: AppStrings.onBoardingSubTitle1,
      image: ImageAssets.onBoardingLogo1,
    ),
    SliderObject(
      title: AppStrings.onBoardingTitle2,
      subTitle: AppStrings.onBoardingSubTitle2,
      image: ImageAssets.onBoardingLogo2,
    ),
    SliderObject(
      title: AppStrings.onBoardingTitle3,
      subTitle: AppStrings.onBoardingSubTitle3,
      image: ImageAssets.onBoardingLogo3,
    ),
    SliderObject(
      title: AppStrings.onBoardingTitle4,
      subTitle: AppStrings.onBoardingSubTitle4,
      image: ImageAssets.onBoardingLogo4,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarBrightness: Brightness.dark,
        ),
      ),

      body: PageView.builder(
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        controller: _pageController,
        itemBuilder: (context, index) {
          return OnBoardingPage(sliderObject: _list[index]);
        },
      ),
      bottomSheet: Container(
        color: ColorManager.white,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(child: Text(AppStrings.skip), onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

// ignore: must_be_immutable
class OnBoardingPage extends StatelessWidget {
  final SliderObject sliderObject;
  const OnBoardingPage({super.key, required this.sliderObject});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: AppSize.s40),
        Text(
          sliderObject.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: AppSize.s10),
        Text(
          sliderObject.subTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: AppSize.s20),
        SvgPicture.asset(sliderObject.image),
      ],
    );
  }
}
