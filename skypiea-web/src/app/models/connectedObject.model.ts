import { Entity } from './entity.model';


export abstract class ConnectedObject extends Entity {
    lastParameterModification: Date;
    isHistoricy: boolean; 
    brand: string;
    ipAddress: string; 
    macAddress: string; 
    lastMeasurementDate: Date; 
    status: string; 
    state: string; 
}