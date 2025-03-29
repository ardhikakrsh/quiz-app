import 'package:quiz_app/models/quiz_question.dart';

var questions = [
  QuizQuestion(
    text: 'What are the main building blocks of Flutter UIs?',
    answers: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    text: 'How are Flutter UIs built?',
    answers: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestion(
    text: 'What\'s the purpose of a StatefulWidget?',
    answers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    text:
        'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answers: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    text: 'What happens if you change data in a StatelessWidget?',
    answers: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    text: 'What is the purpose of the build method in a StatefulWidget?',
    answers: [
      'To build the UI',
      'To update the data',
      'To initialize the widget',
      'To dispose of the widget',
    ],
  ),
  QuizQuestion(
    text: 'How should you update data inside of StatefulWidgets?',
    answers: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    text: 'What is the purpose of the initState method in a StatefulWidget?',
    answers: [
      'To initialize the widget',
      'To build the UI',
      'To update the data',
      'To dispose of the widget',
    ],
  ),
  QuizQuestion(
    text: 'What is the purpose of the dispose method in a StatefulWidget?',
    answers: [
      'To dispose of the widget',
      'To build the UI',
      'To update the data',
      'To initialize the widget',
    ],
  ),
  QuizQuestion(
    text:
        'What is the purpose of the didChangeDependencies method in a StatefulWidget?',
    answers: [
      'To update the widget when dependencies change',
      'To build the UI',
      'To initialize the widget',
      'To dispose of the widget',
    ],
  ),
];
