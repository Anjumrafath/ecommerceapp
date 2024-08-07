import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText(
      {super.key,
      required this.price,
      this.isLarge = false,
      this.currencySign = '\$',
      this.maxLines = 1,
      this.lineThrough = false});
  final String currencySign, price;
  final int maxLines;
  final bool lineThrough;
  final bool isLarge;
  @override
  Widget build(BuildContext context) {
    // final TextStyle? textStyle = isLarge
    //     ? Theme.of(context).textTheme.headlineMedium
    //     : Theme.of(context).textTheme.titleLarge;

    // // Apply decoration only if textStyle is not null
    // final TextStyle? decoratedStyle = textStyle?.apply(
    //   decoration: lineThrough ? TextDecoration.lineThrough : null,
    // );

    // // Use a default style if decoratedStyle is null
    // final TextStyle finalStyle = decoratedStyle ??
    //     TextStyle(
    //       decoration: lineThrough ? TextDecoration.lineThrough : null,
    //     );

    // return Text(
    //   '$currencySign$price',
    //   maxLines: maxLines,
    //   overflow: TextOverflow.ellipsis,
    //   style: finalStyle,
    // );
    return Text(currencySign + price,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: isLarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null));
  }
}
