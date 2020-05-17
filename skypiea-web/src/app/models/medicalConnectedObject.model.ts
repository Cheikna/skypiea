import {HealthControlHistory} from "./healthControlHistory.model";
import {Resident} from "./resident.model";
import {HistoryEvent} from "./historyEvent.model";
import {ConnectedObject} from "./connectedObject.model";

export class MedicalConnectedObject extends ConnectedObject{
  resident : Resident;
}
