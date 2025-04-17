import 'Piloted.mixin.dart';
import 'Spacecraft.class.dart';

class Pilotedcraft extends Spacecraft with Piloted {
  Pilotedcraft(super.name, super.launchDate);
}
