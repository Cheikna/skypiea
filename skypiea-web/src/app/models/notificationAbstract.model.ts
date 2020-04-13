import { Entity } from './entity.model';

export abstract class NotificationAbstract extends Entity {
    messageObject: string;
    messageBody: string;
}