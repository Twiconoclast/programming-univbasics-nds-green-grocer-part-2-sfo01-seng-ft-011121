require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  discounted_cart = []
  cart.each_with_index do |hash, i|
    updated_hash = hash
    coupon_hash = hash
    if hash[:clearance] == false
      # discounted_cart << hash
      next
    else
      coupons.each_with_index do |coupon, i2|
        if coupon[:item] != hash[:item]
          next
        elsif coupon[:item] == hash[:item]
            #updated_hash[:count] %= coupon[:num]
            cart[i][:count] %= coupon[:num]
            coupon_hash[:item] += " W/COUPON"
            coupon_hash[:count] = hash[:count] / coupon[:num]
            coupon_hash[:price] = coupon[:cost] / coupon[:num]
            # cart.push(coupon_hash)
        end  
      end
    end

  return cart
end
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
