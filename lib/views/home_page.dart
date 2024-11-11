import 'package:flutter/material.dart';
import '../controllers/doaa_controller.dart';
import '../models/doaa.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DoaaController _controller = DoaaController();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await _controller.loadDoaas();
    setState(() {}); // Refresh the UI after loading data
  }

  void _updateCounter(int index) {
    setState(() {
      _controller.decrementCount(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Athkary')),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal[100]!, Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: isLargeScreen
                ? GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3.5,
                    ),
                    itemCount: _controller.doaaList.length,
                    itemBuilder: (context, index) => _buildDoaaCard(
                        context, _controller.doaaList[index], index),
                  )
                : ListView.builder(
                    itemCount: _controller.doaaList.length,
                    itemBuilder: (context, index) => _buildDoaaCard(
                        context, _controller.doaaList[index], index),
                  ),
          ),
        ),
      ),
    );
  }

  Widget _buildDoaaCard(BuildContext context, Doaa doaa, int index) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize = screenWidth > 600 ? 18.0 : 16.0;
    final iconSize = screenWidth > 600 ? 28.0 : 24.0;

    return GestureDetector(
      onTap: () => _updateCounter(index), // Tap for count update
      child: Card(
        margin: const EdgeInsets.all(10.0),
        elevation: 8,
        shadowColor: Colors.black26,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.favorite, color: Colors.teal, size: iconSize),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    doaa.text,
                    style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                    overflow: TextOverflow.visible,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(8)),
                      onPressed: () => _updateCounter(index),
                      child: const Icon(
                        Icons.remove_circle,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      '${doaa.count}',
                      style: TextStyle(
                          fontSize: fontSize * 0.9, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
