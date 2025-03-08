import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/styles.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int maxLength;
  

  const ExpandableText({super.key, required this.text, this.maxLength = 2});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final bool isLongText = widget.text.length > widget.maxLength;
    final String displayedText =
        isExpanded || !isLongText
            ? widget.text
            : '${widget.text.substring(0, widget.maxLength)}...';
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: displayedText,
            style: AppStyles.regular14.copyWith(
              color: AppColors.secondaryTextColor,
            ),
          ),
          if (isLongText)
            TextSpan(
              text: isExpanded ? " Read less" : " Read more",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
            ),
        ],
      ),
    );
  }
}
