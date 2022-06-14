import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_membuat_register_ke_2/services/alert_service.dart';
import 'package:project_membuat_register_ke_2/services/api_service.dart';
import 'package:project_membuat_register_ke_2/services/geolocator_service.dart';
import 'package:project_membuat_register_ke_2/services/location_service.dart';
import 'package:project_membuat_register_ke_2/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => ApiService());
  locator.registerLazySingleton(() => GeolocatorService());
  locator.registerLazySingleton(() => LocationService());
  locator.registerLazySingleton(() => AlertService());
}