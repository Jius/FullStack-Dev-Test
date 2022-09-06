require "test_helper"

class InterventionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intervention = interventions(:gotham_bruce)
  end

  test "should get index" do
    get interventions_url, as: :json
    assert_response :success
  end

  test "should create intervention" do
    assert_difference('Intervention.count') do
      post interventions_url, params: { intervention: { address: @intervention.address, city: @intervention.city, company_attributes: {name: @intervention.company.name, siren: @intervention.company.siren}, customer_attributes: {name: @intervention.customer.name, email: @intervention.customer.email, phone: @intervention.customer.phone}, ref_panel: @intervention.ref_panel, started_at: @intervention.started_at, total_panels: @intervention.total_panels, type_panel: @intervention.type_panel, zipcode: @intervention.zipcode } }, as: :json
    end

    assert_response 201
  end

  test "shouldn't create intervention with incorrect params" do
    post interventions_url, params: { intervention: { bad_params: 'Hello world' } }, as: :json
    assert_response 422
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