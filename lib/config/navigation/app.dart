import 'package:merchan/ui/views/views.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: RegisterView,
      initial: true,
    ),
    MaterialRoute(
      page: LoginView,
    )
  ],
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
