import 'package:flutter/material.dart';
import 'package:secure_storage/widgets/textfield_decoration.dart';

class SearchKeyValueDialog extends StatefulWidget {
  const SearchKeyValueDialog({Key? key}) : super(key: key);

  @override
  State<SearchKeyValueDialog> createState() => _SearchKeyValueDialogState();
}

class _SearchKeyValueDialogState extends State<SearchKeyValueDialog> {
  final TextEditingController _keyController = TextEditingController();
  //TODO: Initialize the StorageService instance
  String? _value;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _keyController,
              decoration: textFieldDecoration(hintText: "Enter Key"),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                      //TODO: Use the readSecureData method to read value with the help of the input key
                    },
                    child: const Text('Search'))),
            _value == null
                ? const SizedBox()
                : Text(
                    'Value: $_value',
                  )
          ],
        ),
      ),
    );
  }
}
