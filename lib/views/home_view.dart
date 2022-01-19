import 'package:flutter/material.dart';
import 'package:secure_storage/services/storage_service.dart';
import 'package:secure_storage/widgets/vault_card.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //TODO: Initialize the StorageService instance
  late List<StorageItem> _items;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    initList();
  }

  void initList() async {
    _items = []; //TODO: Use the readAll method here to update the list
    _loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              //TODO: Use the SearchKeyValueDialog widget to read data according to the key
            },
          )
        ],
      ),
      body: Center(
        child: _loading
            ? const CircularProgressIndicator()
            : _items.isEmpty
                ? const Text("Add data in secure storage to display here.")
                : ListView.builder(
                    itemCount: _items.length,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    itemBuilder: (_, index) {
                      //TODO: Use Dismissible Widget to delete a particular key-pair using the deleteSecureData method
                      return VaultCard(item: _items[index]);
                    }),
      ),
      floatingActionButton: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    //TODO: Utilize the AddDataDialog widget to get the new item and use the writeSecureData method to write new data in secure storage
                  },
                  child: const Text("Add Data"),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () async {
                    //TODO: To delete all the data from the secure storage use the deleteAllSecureData method
                  },
                  child: const Text("Delete All Data"),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
