import { ObjectSetting } from './objectSetting.model';
import { Status } from '../enums/status.enum';


export class AlarmClock extends ObjectSetting {
    currentTime: Date;
}