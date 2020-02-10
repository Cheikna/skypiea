import { Entity } from './entity.model';
import { Resident } from './resident.model';
import { HistoryMoving } from './historyMoving.model';

export class ElectronicTag extends Entity {
    resident: Resident;
    historyMoving : Array<HistoryMoving>;
}