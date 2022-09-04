require "test_helper"

class InterventionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intervention = interventions(:one)
  end

  test "should get index" do
    get interventions_url, as: :json
    assert_response :success
  end

  test "should create intervention" do
    assert_difference('Intervention.count') do
      post interventions_url, params: { intervention: { address: @intervention.address, city: @intervention.city, company_id: @intervention.company_id, customer_id: @intervention.customer_id, ref_panel: @intervention.ref_panel, started_at: @intervention.started_at, total_panels: @intervention.total_panels, type_panel: @intervention.type_panel, zipcode: @intervention.zipcode } }, as: :json
    end

    assert_response 201
  end

  test "should show intervention" do
    get intervention_url(@intervention), as: :json
    assert_response :success
  end

  test "should update intervention" do
    patch intervention_url(@intervention), params: { intervention: { address: @intervention.address, city: @intervention.city, company_id: @intervention.company_id, customer_id: @intervention.customer_id, ref_panel: @intervention.ref_panel, started_at: @intervention.started_at, total_panels: @intervention.total_panels, type_panel: @intervention.type_panel, zipcode: @intervention.zipcode } }, as: :json
    assert_response 200
  end

  test "should destroy intervention" do
    assert_difference('Intervention.count', -1) do
      delete intervention_url(@intervention), as: :json
    end

    assert_response 204
  end
end