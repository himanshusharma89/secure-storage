import 'package:flutter/material.dart';
import 'package:secure_storage/widgets/textfield_decoration.dart';

class EditDataDialog extends StatefulWidget {
  //TODO: Expect a StorageItem here

  const EditDataDialog({Key? key}) : super(key: key);

  @override
  State<EditDataDialog> createState() => _EditDataDialogState();
}

class _EditDataDialogState extends State<EditDataDialog> {
  late TextEditingController _valueController;

  @override
  void initState() {
    super.initState();
    //TODO: Add the default text to the _valueController using the StorageItem
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _valueController,
              decoration: textFieldDecoration(hintText: "Enter Value"),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      //TODo: Return the updated value back to the vault VaultCard widget
                    },
                    child: const Text('Update')))
          ],
        ),
      ),
    );
  }
}
