import 'package:quiz_app/models/quiz_question.dart';

const questions = [
   QuizQuestion(
     'What are the main building blocks of Flutter UIs',
     ['Widgets', 
     'Components', 
     'Blocks', 
     'Functions'
     ],
   ),
    QuizQuestion(
      'How are Flutter UIs built?',
      ['By combining widgets in a visual editor',
      'By using XCode for IOS and Android Studio for Android', 
      'By combining widgets in code', 
      'By defining widgets in config files', 
      ],
    ),
    QuizQuestion(
     'Whats the purpose of a StatefulWidget?',
     ['Render UI that does not depend on data',
     'Update data as UI changes', 
     'Ignore data changes', 
     'Update UI as data changes', 
     ],
   ),
   QuizQuestion(
     'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
     ['None of the above',
     'StatefulWidget',
     'StatelessWidget',
     'Both are equally good',
     ],
   ),
   QuizQuestion(
     'What happens if you change data in a StatelessWidget?',
     ['The closest StatefulWidget is updated', 
     'The UI is updated', 
     'Any nested StatefulWidgets are updated', 
     'The UI is not updated',
     ],
   ),
   QuizQuestion(
     'How shoul you update data inside of StatefulWidgets?',
     ['By calling setState()', 
     'By calling update()', 
     'By calling updateData()', 
     'By calling updateState()'
     ],
   ),
];