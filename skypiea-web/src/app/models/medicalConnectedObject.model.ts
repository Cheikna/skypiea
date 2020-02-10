import {HealthControlHistory} from "./healthControlHistory.model";
import {Resident} from "./resident.model";

export class MedicalConnectedObject{
  healthControlHistories : Array<HealthControlHistory>;
  resident : Resident;
}
