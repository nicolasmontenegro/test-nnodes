require 'test_helper'

class FightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fight = fights(:one)
  end

  test "should get index" do
    get fights_url
    assert_response :success
  end

  test "should get new" do
    get new_fight_url
    assert_response :success
  end

  test "should create fight" do
    assert_difference('Fight.count') do
      post fights_url, params: { fight: { ended_at: @fight.ended_at, superhero_id: @fight.superhero_id, user_id: @fight.user_id, user_won: @fight.user_won } }
    end

    assert_redirected_to fight_url(Fight.last)
  end

  test "should show fight" do
    get fight_url(@fight)
    assert_response :success
  end

  test "should get edit" do
    get edit_fight_url(@fight)
    assert_response :success
  end

  test "should update fight" do
    patch fight_url(@fight), params: { fight: { ended_at: @fight.ended_at, superhero_id: @fight.superhero_id, user_id: @fight.user_id, user_won: @fight.user_won } }
    assert_redirected_to fight_url(@fight)
  end

  test "should destroy fight" do
    assert_difference('Fight.count', -1) do
      delete fight_url(@fight)
    end

    assert_redirected_to fights_url
  end
end
