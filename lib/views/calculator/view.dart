import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        title: Text('Calculator'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_active),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('hello world');
        },
        child: Icon(Icons.add),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5FNxZZ4Diquc05MFPvwp_eR_DL6ckXeGFcg_VDgNpB5EX-6SNDmBx5-XOKe8uVULBIPI&usqp=CAU'),
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5FNxZZ4Diquc05MFPvwp_eR_DL6ckXeGFcg_VDgNpB5EX-6SNDmBx5-XOKe8uVULBIPI&usqp=CAU",
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Number1",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Operation",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Number2",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          FilledButton(
            onPressed: () {},
            child: Text("Calc"),
          )
        ],
      ),
    );
  }
}
// hexa color
// ready colors
