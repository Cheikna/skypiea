import { ChartDataSets } from 'chart.js';
import { NonMedicalObjectType } from '../enums/nonMedicalObjectType.enum';
import { Status } from '../enums/status.enum';

export class StatisticData {
    // status
    timeSpentOnEachStatusLabels: string[] = [];
    timeSpentOnEachStatusData: number[] = [];
    numberOfChangesOnEachStatusLabels: string[] = [];
    numberOfChangesOnEachStatusData: number[] = [];

    // state
    statesLabels: string[] = [];
    statesData: ChartDataSets[] = [{ data: [], label: '' }];

    // Temperature Controller(=> indoor, room info)
    temperaturesLabels: string[] = [];
    temperaturesData: ChartDataSets[] = [{ data: [], label: '' }];

    // Sunshine Sensor (=> external info)
    sunshineSensorSunshinesLabels: string[] = [];
    sunshineSensorSunshinesData: ChartDataSets[] = [{ data: [], label: '' }];
    sunshineSensorTemperaturesLabels: string[] = [];
    sunshineSensorTemperaturesData: ChartDataSets[] = [{ data: [], label: '' }];


    setGeneralData(data){
        const changeStatusMap: Map<string, number> = data.totalChangesOnEachStatus;
        if (changeStatusMap) {
          for (let [key, value] of Object.entries(changeStatusMap)) {
            this.numberOfChangesOnEachStatusLabels.push(key);
            this.numberOfChangesOnEachStatusData.push(value);
          }
        }

        const timeEachStatusMap: Map<Status, number> = data.totalTimeOnEachStatus;
        if (timeEachStatusMap) {
          for (let [key, value] of Object.entries(timeEachStatusMap)) {
            this.timeSpentOnEachStatusLabels.push(key);
            const numberOfMinutes = Math.floor((value / 1000) / 60);
            this.timeSpentOnEachStatusData.push(numberOfMinutes);
          }
        }

        const numberOfChangesOnEachState: Map<Status, number> = data.totalChangesOnEachState;
        if (numberOfChangesOnEachState) {
          const statesData = { data: [], label: 'Repetition in each state' }
          for (let [key, value] of Object.entries(numberOfChangesOnEachState)) {
            this.statesLabels.push(key);
            statesData.data.push(value);
          }
          this.statesData = [];
          this.statesData.push(statesData);
        }
    }


    setSpecificData(objectType, data) {
        if (objectType == NonMedicalObjectType.TEMPERATURE_CONTROLLER) {
            this.setTemperatureControllerData(data);
        } else if (objectType == NonMedicalObjectType.SUNSHINE_SENSOR) {
            this.setSunshineSensorData(data);
        }
    }

    private setTemperatureControllerData(data) {
        let formattedData = {
            data: [], label: 'Temperature'
        };
        formattedData.data.push(data.minSettledTemperature);
        this.temperaturesLabels.push("Minimal temperature");
        formattedData.data.push(data.averageSettledTemperature);
        this.temperaturesLabels.push("Average temperature");
        formattedData.data.push(data.maxSettledTemperature);
        this.temperaturesLabels.push("Maximal temperature");

        this.temperaturesData = [];
        this.temperaturesData.push(formattedData);
    }

    private setSunshineSensorData(data) {
        let formattedSunshineRateData = {
            data: [], label: 'Sunshine rate'
        };
        let formattedTemperatureData = {
            data: [], label: 'Temperature'
        };

        formattedSunshineRateData.data.push(data.minExternalSunshine);
        this.sunshineSensorSunshinesLabels.push("Minimal sunshine rate");
        formattedSunshineRateData.data.push(data.averageExternalSunshine);
        this.sunshineSensorSunshinesLabels.push("Average sunshine rate");
        formattedSunshineRateData.data.push(data.maxExternalSunshine);
        this.sunshineSensorSunshinesLabels.push("Maximal sunshine rate");
        this.sunshineSensorSunshinesData = [];
        this.sunshineSensorSunshinesData.push(formattedSunshineRateData)
        
        formattedTemperatureData.data.push(data.minExternalTemperature);
        this.sunshineSensorTemperaturesLabels.push("Minimal temperature");
        formattedTemperatureData.data.push(data.averageExternalTemperature);
        this.sunshineSensorTemperaturesLabels.push("Average temperature");
        formattedTemperatureData.data.push(data.maxExternalTemperature);
        this.sunshineSensorTemperaturesLabels.push("Maximal temperature");
        this.sunshineSensorTemperaturesData = [];
        this.sunshineSensorTemperaturesData.push(formattedTemperatureData);
    }
}