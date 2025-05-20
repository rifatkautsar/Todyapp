import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:todoapp/main.dart';

void main() async {
  await dotenv.load(fileName: '.env.dev');
  await mainCommon();
}
