require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  discounted_cart = []
  coupon_hash = {}
  cart.each_with_index do |hash, i|
    # if hash[:clearance] == false
    #   next
    # else
      coupons.each_with_index do |coupon, i2|
        if coupon[:item] != hash[:item]
          next
        elsif coupon[:item] == hash[:item]
          coupon_hash = {
            :item => hash[:item] + " W/COUPON",
            :price => coupon[:cost] / coupon[:num],
            :clearance => hash[:clearance],
            :count => (hash[:count] / coupon[:num]) * coupon[:num]
            }
          discounted_cart << coupon_hash
          cart[i][:count] %= coupon[:num]
        end  
      end
    # end
  end
  cart += discounted_cart
  return cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
