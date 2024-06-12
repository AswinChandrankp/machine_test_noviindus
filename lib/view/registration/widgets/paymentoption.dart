// import 'package:flutter/material.dart';

// class PaymentOptionsWidget extends StatefulWidget {
//   final TextEditingController paymentMethodController;

//   const PaymentOptionsWidget({Key? key, required this.paymentMethodController}) : super(key: key);

//   @override
//   _PaymentOptionsWidgetState createState() => _PaymentOptionsWidgetState();
// }

// class _PaymentOptionsWidgetState extends State<PaymentOptionsWidget> {
//   String? _selectedPaymentMethod;

//   @override
//   void initState() {
//     super.initState();
//     _selectedPaymentMethod = widget.paymentMethodController.text;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Select Payment Method',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         RadioListTile<String>(
//           title: Text('UPI'),
//           value: 'UPI',
//           groupValue: _selectedPaymentMethod,
//           onChanged: (String? value) {
//             setState(() {
//               _selectedPaymentMethod = value;
//               widget.paymentMethodController.text = value!;
//             });
//           },
//         ),
//         RadioListTile<String>(
//           title: Text('Card'),
//           value: 'Card',
//           groupValue: _selectedPaymentMethod,
//           onChanged: (String? value) {
//             setState(() {
//               _selectedPaymentMethod = value;
//               widget.paymentMethodController.text = value!;
//             });
//           },
//         ),
//         RadioListTile<String>(
//           title: Text('Cash'),
//           value: 'Cash',
//           groupValue: _selectedPaymentMethod,
//           onChanged: (String? value) {
//             setState(() {
//               _selectedPaymentMethod = value;
//               widget.paymentMethodController.text = value!;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }



import 'package:flutter/material.dart';

// class PaymentOptionsWidget extends StatefulWidget {
//   final TextEditingController paymentMethodController;

//   const PaymentOptionsWidget({Key? key, required this.paymentMethodController}) : super(key: key);

//   @override
//   _PaymentOptionsWidgetState createState() => _PaymentOptionsWidgetState();
// }

// class _PaymentOptionsWidgetState extends State<PaymentOptionsWidget> {
//   String? _selectedPaymentMethod;

//   @override
//   void initState() {
//     super.initState();
//     _selectedPaymentMethod = widget.paymentMethodController.text;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Select Payment Method',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         Row(
//           children: [
//             Expanded(
//               child: RadioListTile<String>(
//                 title: Text('UPI'),
//                 value: 'UPI',
//                 groupValue: _selectedPaymentMethod,
//                 onChanged: (String? value) {
//                   setState(() {
//                     _selectedPaymentMethod = value;
//                     widget.paymentMethodController.text = value!;
//                   });
//                 },
//               ),
//             ),
//             Expanded(
//               child: RadioListTile<String>(
//                 title: Text('Card'),
//                 value: 'Card',
//                 groupValue: _selectedPaymentMethod,
//                 onChanged: (String? value) {
//                   setState(() {
//                     _selectedPaymentMethod = value;
//                     widget.paymentMethodController.text = value!;
//                   });
//                 },
//               ),
//             ),
//             Expanded(
//               child: RadioListTile<String>(
//                 title: Text('Cash'),
//                 value: 'Cash',
//                 groupValue: _selectedPaymentMethod,
//                 onChanged: (String? value) {
//                   setState(() {
//                     _selectedPaymentMethod = value;
//                     widget.paymentMethodController.text = value!;
//                   });
//                 },
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }



import 'package:flutter/material.dart';

enum PaymentOption { UPI, Cash, Card }

class PaymentOptionsWidget extends StatefulWidget {
  final ValueChanged<PaymentOption>? onChanged;

  const PaymentOptionsWidget({Key? key, this.onChanged}) : super(key: key);

  @override
  _PaymentOptionsWidgetState createState() => _PaymentOptionsWidgetState();
}

class _PaymentOptionsWidgetState extends State<PaymentOptionsWidget> {
  PaymentOption _selectedOption = PaymentOption.UPI;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (PaymentOption option in PaymentOption.values)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio<PaymentOption>(
                  value: option,
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value!;
                      widget.onChanged?.call(value);
                    });
                  },
                ),
                Text(option.toString().split('.').last),
                SizedBox(width: 16), 
              ],
            ),
        ],
      ),
    );
  }
}
