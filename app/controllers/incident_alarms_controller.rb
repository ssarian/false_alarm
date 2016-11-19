class IncidentAlarmsController < InheritedResources::Base

  private

    def incident_alarm_params
      params.require(:incident_alarm).permit(:importDateTime)
    end
end

