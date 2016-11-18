require 'test_helper'

class IncidentAlarmsControllerTest < ActionController::TestCase
  setup do
    @incident_alarm = incident_alarms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incident_alarms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident_alarm" do
    assert_difference('IncidentAlarm.count') do
      post :create, incident_alarm: { importDateTime: @incident_alarm.importDateTime }
    end

    assert_redirected_to incident_alarm_path(assigns(:incident_alarm))
  end

  test "should show incident_alarm" do
    get :show, id: @incident_alarm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident_alarm
    assert_response :success
  end

  test "should update incident_alarm" do
    patch :update, id: @incident_alarm, incident_alarm: { importDateTime: @incident_alarm.importDateTime }
    assert_redirected_to incident_alarm_path(assigns(:incident_alarm))
  end

  test "should destroy incident_alarm" do
    assert_difference('IncidentAlarm.count', -1) do
      delete :destroy, id: @incident_alarm
    end

    assert_redirected_to incident_alarms_path
  end
end
