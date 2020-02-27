import 'package:http/http.dart' as http;

main(List<String> args) async {
  
  var url = 'https://www.baidu.com';
  var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  print(await http.read('https://www.baidu.com'));

}