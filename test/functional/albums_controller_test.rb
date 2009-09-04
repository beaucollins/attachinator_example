require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  should "delete associated photo" do
    @album = albums(:album)
    assert_difference('Photo.count', -1) do
      put :update, :id => @album.to_param, :album => {
        :name => 'Album',
        :photos_attributes => {
          '0' => {
            :_delete => true,
            :id => @album.photos[0].to_param
          },
          '1' => {
            :id => @album.photos[1].to_param
          }
        }
      }
    end
    assert_response :redirect
  end

end
