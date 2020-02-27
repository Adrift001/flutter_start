// as 给库起别名
// 默认情况下导入所有公共内容
//     show 指定要导入的内容
//      hide 隐藏导入内容
// import 'utils/math_utils.dart' as utils show sum;
// import 'utils/date_utils.dart';

import 'utils/utils.dart' as utils;

main(List<String> args) {
  print(utils.sum(1, 2));
  print(utils.dateFormat());
}

void sum(num1, num2) {
  print(num1 + num2);
}