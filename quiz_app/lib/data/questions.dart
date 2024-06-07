import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    '플러터 UI의 주요 구성 요소는 무엇 일까요?',
    ['Widgets', 'Components', 'Blocks', 'Functions'],
  ),

  QuizQuestion(
    '플러터 UI는 어떻게 구현이 될까요?',
    [
      '위젯을 코드로 조합하여 구현',
      '비주얼 에디터에서 위젯을 조합하여 구현',
      '구성 파일에서 위젯을 정의하여 구현',
      'iOS용 XCode, Android용 Android Studio 사용하여 구현',
    ],
  ),

  QuizQuestion(
    'StatefulWidget의 목적은 무엇 일까요??',
    [
      '데이터 변경에 따른 UI 업데이트',
      'UI 변경에 따른 데이터 업데이트',
      '데이터 변경 무시',
      '데이터에 의존하지 않는 UI 렌더링',
    ],
  ),

  QuizQuestion(
    'StatelessWidget 하고 StatefulWidget 중에 어떤 위젯을 더 자주 사용해야 할까요?',
    [
      'StatelessWidget',
      'StatefulWidget',
      '둘 다',
      '둘 다 아니다',
    ],
  ),

  QuizQuestion(
    'StatelessWidget에서 데이터를 변경하면 어떻게 될까요?',
    [
      'UI가 업데이트 되지 않는다.',
      'UI가 업데이트 된다.',
      '가장 가까운 StatefulWidget이 업데이트 된다.',
      '중첩된 모든 StatefulWidgets이 업데이트 된다.',
    ],
  ),

  QuizQuestion(
    'StatefulWidgets의 내부의 데이터를 어떻게 업데이트해야 할까요?',
    [
      'setState() 호출',
      'updateData() 호출',
      'pdateUI() 호출',
      'updateState() 호출',
    ],
  ),
];
