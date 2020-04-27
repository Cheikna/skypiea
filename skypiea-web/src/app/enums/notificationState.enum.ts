export enum NotificationState {
    NOT_SENT = "NOT_SENT",
    SENT = "SENT", 
    READ = "READ"
}

export const notificationStateInfo = {
	"NOT_SENT": {
        color: "#FBFE0C",
        display_name: "Not sent"
	},
	"SENT": {
		color: "#FEA90C",
        display_name: "Sent"
	},
	"READ": {
		color: "#01DA00",
        display_name: "Read"
	}
}