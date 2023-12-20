import 'package:black_mamba/screens/black_mamba_home_page.dart';
import 'package:black_mamba/screens/booking_page.dart';
import 'package:black_mamba/screens/favorite_page.dart';
import 'package:black_mamba/screens/profile_page.dart';


class NavigationController {
  int selectedIndex = 0;
  var screens = [
    const BlackMambaHomePage(),
    const BookingPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];
}
