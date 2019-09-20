class CouponsController < ApplicationController

    def index 
        @coupons = Coupon.all
    end

    def new 
    end

    def show
        @coupon = Coupon.find(params[:id])
    end
    
    def create
        redirect_to coupon_path(Coupon.create(coupon_params))
    end

    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end
end
