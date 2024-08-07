import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'main.dart';

// Memo 데이터의 형식을 정해줍니다. 추후 isPinned, updatedAt 등의 정보도 저장할 수 있습니다.
class Memo {
  Memo({
    required this.content,
    this.isPined = false,
    this.dateTime = '',
  });

  String content;
  bool isPined;
  String dateTime;

  Map toJson() {
    return {'content': content, 'isPined': isPined, 'dateTime': dateTime};
  }

  factory Memo.fromJson(json) {
    return Memo(
        content: json['content'],
        isPined: json['isPined'],
        dateTime: json['dateTime']);
  }
}

// Memo 데이터는 모두 여기서 관리
class MemoService extends ChangeNotifier {
  MemoService() {
    loadMemoList();
  }

  List<Memo> memoList = [];

  pinMemo({required int index}) {
    Memo value = memoList[index];
    if (value.isPined) {
      value.isPined = false;
      memoList.add(value);
      memoList.removeAt(index);
    } else {
      value.isPined = true;
      memoList.removeAt(index);
      memoList.insert(0, value);
    }
    notifyListeners();
    saveMemoList();
  }

  createMemo({required String content}) {
    Memo memo = Memo(content: content);
    memoList.add(memo);
    notifyListeners(); // Consumer<MemoService>의 builder 부분을 호출해서 화면 새로고침
    saveMemoList();
  }

  updateMemo({required int index, required String content}) {
    Memo memo = memoList[index];
    if (content == '') {
      deleteMemo(index: index);
      return;
    }
    memo.content = content;
    memo.dateTime = DateFormat('yy/mm/dd - HH:mm:ss').format(DateTime.now());
    notifyListeners();
    saveMemoList();
  }

  deleteMemo({required int index}) {
    memoList.removeAt(index);
    notifyListeners();
    saveMemoList();
  }

  saveMemoList() {
    List memoJsonList = memoList.map((memo) => memo.toJson()).toList();
    // [{"content": "1"}, {"content": "2"}]

    String jsonString = jsonEncode(memoJsonList);
    // '[{"content": "1"}, {"content": "2"}]'

    prefs.setString('memoList', jsonString);
  }

  loadMemoList() {
    String? jsonString = prefs.getString('memoList');
    // '[{"content": "1"}, {"content": "2"}]'

    if (jsonString == null) return; // null 이면 로드하지 않음

    List memoJsonList = jsonDecode(jsonString);
    // [{"content": "1"}, {"content": "2"}]

    memoList = memoJsonList.map((json) => Memo.fromJson(json)).toList();
  }
}
