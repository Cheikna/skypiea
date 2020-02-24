import { Entity } from './entity.model';
import { Client } from './client.model';

export class Profile extends Entity{
    criteria: String;
    client: Client;
}