import 'package:flutter/widgets.dart';
import 'package:maplibre/src/native/maplibre_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class MapLibrePlatform extends PlatformInterface {
  /// Constructs a MaplibrePlatform.
  MapLibrePlatform() : super(token: _token);

  static final Object _token = Object();

  static MapLibrePlatform _instance = MethodChannelMaplibre();

  /// The default instance of [MapLibrePlatform] to use.
  ///
  /// Defaults to [MethodChannelMaplibre].
  static MapLibrePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MapLibrePlatform] when
  /// they register themselves.
  static set instance(MapLibrePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Widget buildWidget();
}
