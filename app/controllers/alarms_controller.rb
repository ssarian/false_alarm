class AlarmsController < InheritedResources::Base

  private

    def alarm_params
      params.require(:alarm).permit(:permitNum, :beginDate, :endDate, :installDate, :amtDue, :renewalDateTime, :note, :fkPropertyKey, :fkAcctOwnerKey, :fkStatusKey, :fkUserKey, :fkFaSiteTypeKey)
    end
end

