import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
// ignore: avoid_relative_lib_imports
import '../../lib/src/file_extension.dart';

void main() {
  test('Filetype Extension Returning File Type', () {
    final testFile = File('/test/file/path/testFile.jpeg');

    expect(testFile.fileType, FileType.IMAGE);
  });

  test('FileType Extension .isImageFile Checking', () {
    final testFile = File('/test/file/path/testFile.jpeg');

    expect(testFile.isImageFile, true);
  });

  test('FileType Extension .isVideoFile Checking', () {
    final testFile = File('/test/file/path/testFile.mp4');

    expect(testFile.isVideoFile, true);
  });

  test('FileType Extension .isAudioFile Checking', () {
    final testFile = File('/test/file/path/testFile.mp3');

    expect(testFile.isAudioFile, true);
  });

  test('FileType Extension .isTextFile Checking', () {
    final testFile = File('/test/file/path/testFile.txt');

    expect(testFile.isTextFile, true);
  });

  test('FileType Extension Unknown Type', () {
    final testFile = File('/test/file/path/testFile.asdasrsr');

    expect(testFile.fileType, FileType.UNKNOWN);
  });
}
