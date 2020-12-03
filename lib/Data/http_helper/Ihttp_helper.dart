
import 'package:spacex/Models/Launch.dart';

abstract class IHttpHelper {
  Future<List<Launch>> getUpcommingLaunches();
   Future<Launch> getNextLaunch();
}
