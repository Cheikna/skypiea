import { Entity } from './entity.model';
import { Status } from '../enums/status.enum';
import { State } from '../enums/state.enum';
import { RealTimeEvent } from './realTimeEvent.model';
import { HistoryEvent } from './historyEvent.model';


export abstract class ConnectedObject extends Entity {
    lastParameterModification: Date;
    brand: string;
    ipAddress: string; 
    macAddress: string; 
    lastMeasurementDate: Date; 
    status: Status; 
    state: State; 
    realTimeEvent: RealTimeEvent;
    historyEvents: Array<HistoryEvent>;
}