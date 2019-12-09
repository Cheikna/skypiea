

export abstract class NonMedicalConnectedObject {
    id: number;
    version: number;
    lastParameterModification: Date;
    isHistoricy: boolean; 
    brand: string;
    ipAddress: string; 
    macAddress: string; 
    lastMeasurementDate: Date; 
    status: string; 
    state: string; 
}