class Api::ItemsController < ApiController
  before_action :authenticated?

  def create
    item = Item.new(item_params)
    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_message }, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:description, :completed, :list_id)
  end
end