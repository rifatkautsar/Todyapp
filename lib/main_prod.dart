void main() async {
  await dotenv.load(fileName: '.env');
  await mainCommon();
}
