enum DeviceType {
  mobile,
  tablet,
  desktop
}
class ScreenUtils{
  static const double mobileMaxsize = 610;
  static const double tabletMaxsize = 1008;
  static const double desktopMinsize = 610;

  static DeviceType getDeviceType(double width){
    if (width < ScreenUtils.mobileMaxsize) {
      return DeviceType.mobile;
    } else if (width >= ScreenUtils.mobileMaxsize &&
        width < ScreenUtils.tabletMaxsize) {
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }


}