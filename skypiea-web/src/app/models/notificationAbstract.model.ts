import { Entity } from './entity.model';
import { NotificationObject } from '../enums/notificationObject.enum';

export abstract class NotificationAbstract extends Entity {
    notificationObject: NotificationObject;
    messageObject: string;
    messageBody: string;
}