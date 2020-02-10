export class DateUtil {

    /**
     * Give the time difference between the current day and the parameter date
     * @param date
     */
    static getTimeDifferenceInString(date): string {
        let formattedDate: string = "";
        if (date != null) {
            const timestamp: number = new Date(date).getTime();
            const currentTimestamp: number = new Date().getTime();
            let difference = currentTimestamp - timestamp;
            const differenceInSeconds = difference / 1000;
            const minutes = differenceInSeconds / 60;
            const hours = minutes / 60;
            const days = hours / 24;
            const months = days / 30;

            if (months >= 1)
                formattedDate += `${Math.trunc(months) % 12} month(s) `;
            if (days >= 1)
                formattedDate += `${Math.trunc(days) % 30} day(s) `;
            if (hours >= 1)
                formattedDate += `${Math.trunc(hours) % 24} hour(s) `;
            if (minutes >= 1)
                formattedDate += `${Math.trunc(minutes) % 60} minute(s) `;
        }
        return formattedDate;
    }



}