import { UserType } from '../enums/userType.enum';

export class Logon {
    username: string;
    password: string;

    constructor(logonToCopy: Partial<Logon>){
        this.username = logonToCopy.username;
        this.password = logonToCopy.password;
    }
}