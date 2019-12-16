import { UserType } from '../enums/userType.enum';

export abstract class User {
    id: number;
    version: number;
    lastName: string;
    firstName: string;
    username: string;
    userType: UserType;
    lastConnectionDate: Date;
}