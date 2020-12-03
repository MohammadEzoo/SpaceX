import 'package:spacex/Models/Launch.dart';

abstract class IRepository {
  Future<List<Launch>> getUpcommingLuanches();
  Future<Launch> getNextLaunch();
}
