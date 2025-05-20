import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:todoapp/core/components/base_color.dart';
import 'package:todoapp/core/components/dimens.dart';
import 'package:todoapp/core/components/image_path.dart';
import 'package:todoapp/features/splashscreen/presentation/bloc/splashscreen_bloc.dart';
import 'package:todoapp/shared/widgets/custom_text.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashscreenBloc()..add(CheckAuthEvent()),
      child: Scaffold(
        body: BlocListener<SplashscreenBloc, SplashscreenState>(
          listener: (context, state) {
            if (state is SplashAuthenticated) {
            } else if (state is SplashUnauthenticated) {}
          },
          child: Scaffold(
            backgroundColor: AppColors.primaryGreen,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(ImagePath.appLogo),
                  CustomText(
                    text: 'app_name'.tr(),
                    color: Colors.white,
                    fontSize: AppDimens.defaultFontSizeXLarge,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 10.0),
                  CustomText(
                    text: 'app_description'.tr(),
                    color: Colors.white,
                    fontSize: AppDimens.defaultFontSizeMedium,
                  ),
                  const SizedBox(height: 20.0),
                  LoadingAnimationWidget.flickr(
                      leftDotColor: AppColors.defaultBrand,
                      rightDotColor: AppColors.primaryNeutral,
                      size: AppDimens.defaultIconSize)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
