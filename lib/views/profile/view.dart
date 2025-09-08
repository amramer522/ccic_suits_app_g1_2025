import 'package:flutter/material.dart';

import 'widgets/item_profile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.all(19),
        children: [
          Center(
            child: ClipOval(
              child: Image.network(
                'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 14),
          Text(
            'Safia Ayman',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 41),
          ItemProfile(icon: 'your_profile.png', title: 'Your Profile', onPressed: () {}),
          ItemProfile(icon: 'my_order.png', title: 'My Order', onPressed: () {}),
          ItemProfile(icon: 'payment_methods.png', title: 'Payment Methods', onPressed: () {}),
          ItemProfile(icon: 'wishlist.png', title: 'Wishlist', onPressed: () {}),
          ItemProfile(icon: 'setting.png', title: 'Setting', onPressed: () {}),
          ItemProfile(icon: 'log_out.png', title: 'Log Out', onPressed: () {}),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Row(
          children: [
            Expanded(child: Image.asset('assets/icons/log_out.png',height: 20,width: 20,)),
            Expanded(child: Image.asset('assets/icons/log_out.png',height: 20,width: 20,)),
          ],
        ),
      ),
    );
  }
}
