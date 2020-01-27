import { State } from '../enums/state.enum';

export class RealTimeEvent extends Event {
    lastCheckingTime: Date;
    currentState: State;
    checkingCount: number;
}