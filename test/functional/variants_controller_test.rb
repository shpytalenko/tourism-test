require 'test_helper'

class VariantsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Variant.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Variant.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Variant.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to variant_url(assigns(:variant))
  end

  def test_edit
    get :edit, :id => Variant.first
    assert_template 'edit'
  end

  def test_update_invalid
    Variant.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Variant.first
    assert_template 'edit'
  end

  def test_update_valid
    Variant.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Variant.first
    assert_redirected_to variant_url(assigns(:variant))
  end

  def test_destroy
    variant = Variant.first
    delete :destroy, :id => variant
    assert_redirected_to variants_url
    assert !Variant.exists?(variant.id)
  end
end
