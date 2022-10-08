/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/calendar_event.svg
  SvgGenImage get calendarEvent => const SvgGenImage('assets/icons/calendar_event.svg');

  $AssetsIconsCheckmarksGen get checkmarks => const $AssetsIconsCheckmarksGen();

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/marker.svg
  SvgGenImage get marker => const SvgGenImage('assets/icons/marker.svg');

  $AssetsIconsNavigationGen get navigation => const $AssetsIconsNavigationGen();

  /// File path: assets/icons/phone.svg
  SvgGenImage get phone => const SvgGenImage('assets/icons/phone.svg');

  /// File path: assets/icons/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/settings.svg');

  /// File path: assets/icons/spinner.svg
  SvgGenImage get spinner => const SvgGenImage('assets/icons/spinner.svg');

  /// File path: assets/icons/warning_wavy.svg
  SvgGenImage get warningWavy => const SvgGenImage('assets/icons/warning_wavy.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [calendarEvent, home, marker, phone, settings, spinner, warningWavy];
}

class $AssetsIllustrationsGen {
  const $AssetsIllustrationsGen();

  $AssetsIllustrationsModulesGen get modules => const $AssetsIllustrationsModulesGen();
  $AssetsIllustrationsMoodsGen get moods => const $AssetsIllustrationsMoodsGen();
}

class $AssetsIconsCheckmarksGen {
  const $AssetsIconsCheckmarksGen();

  /// File path: assets/icons/checkmarks/error.svg
  SvgGenImage get error => const SvgGenImage('assets/icons/checkmarks/error.svg');

  /// File path: assets/icons/checkmarks/info.svg
  SvgGenImage get info => const SvgGenImage('assets/icons/checkmarks/info.svg');

  /// File path: assets/icons/checkmarks/success.svg
  SvgGenImage get success => const SvgGenImage('assets/icons/checkmarks/success.svg');

  /// List of all assets
  List<SvgGenImage> get values => [error, info, success];
}

class $AssetsIconsNavigationGen {
  const $AssetsIconsNavigationGen();

  /// File path: assets/icons/navigation/left.svg
  SvgGenImage get left => const SvgGenImage('assets/icons/navigation/left.svg');

  /// File path: assets/icons/navigation/right.svg
  SvgGenImage get right => const SvgGenImage('assets/icons/navigation/right.svg');

  /// List of all assets
  List<SvgGenImage> get values => [left, right];
}

class $AssetsIllustrationsModulesGen {
  const $AssetsIllustrationsModulesGen();

  /// File path: assets/illustrations/modules/anxiety_panic.svg
  SvgGenImage get anxietyPanic =>
      const SvgGenImage('assets/illustrations/modules/anxiety_panic.svg');

  /// File path: assets/illustrations/modules/depression.svg
  SvgGenImage get depression => const SvgGenImage('assets/illustrations/modules/depression.svg');

  /// File path: assets/illustrations/modules/eating_disorder.svg
  SvgGenImage get eatingDisorder =>
      const SvgGenImage('assets/illustrations/modules/eating_disorder.svg');

  /// File path: assets/illustrations/modules/my_records.svg
  SvgGenImage get myRecords => const SvgGenImage('assets/illustrations/modules/my_records.svg');

  /// File path: assets/illustrations/modules/self_harm.svg
  SvgGenImage get selfHarm => const SvgGenImage('assets/illustrations/modules/self_harm.svg');

  /// File path: assets/illustrations/modules/suicidal_thoughts.svg
  SvgGenImage get suicidalThoughts =>
      const SvgGenImage('assets/illustrations/modules/suicidal_thoughts.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [anxietyPanic, depression, eatingDisorder, myRecords, selfHarm, suicidalThoughts];
}

class $AssetsIllustrationsMoodsGen {
  const $AssetsIllustrationsMoodsGen();

  /// File path: assets/illustrations/moods/bad_4.svg
  SvgGenImage get bad4 => const SvgGenImage('assets/illustrations/moods/bad_4.svg');

  /// File path: assets/illustrations/moods/good_2.svg
  SvgGenImage get good2 => const SvgGenImage('assets/illustrations/moods/good_2.svg');

  /// File path: assets/illustrations/moods/happy_1.svg
  SvgGenImage get happy1 => const SvgGenImage('assets/illustrations/moods/happy_1.svg');

  /// File path: assets/illustrations/moods/okay_3.svg
  SvgGenImage get okay3 => const SvgGenImage('assets/illustrations/moods/okay_3.svg');

  /// File path: assets/illustrations/moods/sad_5.svg
  SvgGenImage get sad5 => const SvgGenImage('assets/illustrations/moods/sad_5.svg');

  /// List of all assets
  List<SvgGenImage> get values => [bad4, good2, happy1, okay3, sad5];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsIllustrationsGen illustrations = $AssetsIllustrationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
