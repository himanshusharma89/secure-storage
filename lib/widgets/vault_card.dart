import 'package:flutter/material.dart';
import 'package:secure_storage/models/storage_item.dart';

class VaultCard extends StatefulWidget {
  StorageItem item;

  VaultCard({required this.item, Key? key}) : super(key: key);

  @override
  State<VaultCard> createState() => _VaultCardState();
}

class _VaultCardState extends State<VaultCard> {
  bool _visibility = false;
  //TODO: Initialize the StorageService instance

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(3, 3),
                    color: Colors.grey.shade300,
                    blurRadius: 5)
              ]),
          child: ListTile(
            onLongPress: () {
              setState(() {
                _visibility = !_visibility;
              });
            },
            title: Text(
              widget.item.key,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            subtitle: Visibility(
              visible: _visibility,
              child: Text(
                widget.item.value,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            leading: const Icon(Icons.security, size: 30),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () async {
                //TODO: Get the updated value and write it into the secure storage using the StorageItem object's key
              },
            ),
          )),
    );
  }
}
