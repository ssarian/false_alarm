json.extract! citation, :id, :citationNum, :violationDateTime, :violationNum, :alarmRegistered, :fkAcctOwnerKey, :fkStatusKey, :fkCadAlarm, :fkPropertyKey, :fkAlarmKey, :fkFaSiteTypeKey, :created_at, :updated_at
json.url citation_url(citation, format: :json)