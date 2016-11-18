class IncidentsController < InheritedResources::Base

  private

    def incident_params
      params.require(:incident).permit(:incidentNum, :incidentDateTime, :permitNum, :address, :city, :state, :zip)
    end
end

