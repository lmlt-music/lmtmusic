import 'package:flutter/material.dart';

void main() => runApp(LmltMusicApp());

class LmltMusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: LmltMusicScreen(),
        ),
      ),
    );
  }
}

class LmltMusicScreen extends StatefulWidget {
  @override
  _LmltMusicScreenState createState() => _LmltMusicScreenState();
}

class _LmltMusicScreenState extends State<LmltMusicScreen> {
  bool _agreedToTerms = false;

  void _setAgreedToTerms(bool? newValue) {
    setState(() {
      _agreedToTerms = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Spacer(),
        Text(
          'lmlt.music',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'The wallet designed to make digital ID and global finance simple for all.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        CheckboxListTile(
          title: const Text(
              'I agree with User Terms And Conditions and acknowledge the Privacy notice of lmlt.music'),
          value: _agreedToTerms,
          onChanged: _setAgreedToTerms,
          controlAffinity: ListTileControlAffinity
              .leading, // positions the checkbox at the start of the tile
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _agreedToTerms
              ? () {
                  // Implement registration logic
                }
              : null,
          child: Text('New account'),
        ),
        TextButton(
          onPressed: () {
            // Implement login logic
          },
          child: Text('Existing account'),
        ),
        Spacer(),
      ],
    );
  }
}
