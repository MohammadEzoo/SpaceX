import 'package:spacex/Data/http_helper/Ihttp_helper.dart';
import 'package:spacex/Models/Launch.dart';

import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;

  Repository(
    this._ihttpHelper,
  );
  @override
  Future<List<Launch>> getUpcommingLuanches() async {
    return _ihttpHelper.getUpcommingLaunches();
  }

  @override
  Future<Launch> getNextLaunch() async {
    return _ihttpHelper.getNextLaunch();
  }
}
