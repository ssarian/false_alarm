class CitationsController < InheritedResources::Base

  private

    def citation_params
      params.require(:citation).permit(:citationNum, :violationDateTime, :violationNum, :alarmRegistered, :fkAcctOwnerKey, :fkStatusKey, :fkCadAlarm, :fkPropertyKey, :fkAlarmKey, :fkFaSiteTypeKey)
    end
end

