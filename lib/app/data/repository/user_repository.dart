import 'package:agenda/app/data/provider/app_provider.dart';
import 'package:meta/meta.dart';

class UserRepository {

final ApiClient apiClient;

UserRepository({@required this.apiClient}) : assert(apiClient != null);

}