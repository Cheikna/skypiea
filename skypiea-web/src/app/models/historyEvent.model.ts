import { State } from '../enums/state.enum';

export class HistoryEvent extends Event {
    endTime: Date;
    reachedState: State;
}