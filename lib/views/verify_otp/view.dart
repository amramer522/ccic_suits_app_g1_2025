import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOTPView extends StatelessWidget {
  const VerifyOTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Enter Verification Code',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff101623),
              ),
            ),
            const SizedBox(height: 8),
            const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffA1A8B0),
                ),
                children: [
                  TextSpan(text: 'Enter code that we have sent to your\nnumber '),
                  TextSpan(
                    text: '08528188***',
                    style: TextStyle(
                      color: Color(0xff101623),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 32),
            PinCodeTextField(
              appContext: context,
              length: 4,
              backgroundColor: Colors.transparent,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              enableActiveFill: true,
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 64,
                  fieldWidth: 64,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  inactiveColor: Colors.transparent,
                  selectedColor: Theme.of(context).primaryColor,
                  selectedFillColor: Colors.white,
                  activeColor: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(16)),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () {},
              child: const Text("Verify"),
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Didn’t receive the code?"),
                TextButton(onPressed: () {}, child: const Text('Resend')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
