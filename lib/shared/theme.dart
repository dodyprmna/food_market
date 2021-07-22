part of 'shared.dart';

// Color
Color greyColor = "8D92A3".toColor();
Color mainColor = "FFC700".toColor();

Widget loadingIndicator = SpinKitFadingCircle(size: 45, color: mainColor);

// text style
TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(color: Colors.black);

// Margin dll
const double defaultMargin = 24;
