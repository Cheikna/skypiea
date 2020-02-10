import { Entity } from './entity.model';
import { EventType } from '../enums/eventType.model';

export class Event extends Entity {
    eventType: EventType;
    startTime: Date;
    description: string;
    lastMeasuredValue: number;
}