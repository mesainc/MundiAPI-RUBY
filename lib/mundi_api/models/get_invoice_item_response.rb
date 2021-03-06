# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Response object for getting an invoice item
  class GetInvoiceItemResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [GetPricingSchemeResponse]
    attr_accessor :pricing_scheme

    # TODO: Write general description for this method
    # @return [GetPriceBracketResponse]
    attr_accessor :price_bracket

    # Subscription Item Id
    # @return [String]
    attr_accessor :subscription_item_id

    # Subscription Item Id
    # @return [Integer]
    attr_accessor :quantity

    # Subscription Item Id
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['description'] = 'description'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['price_bracket'] = 'price_bracket'
      @_hash['subscription_item_id'] = 'subscription_item_id'
      @_hash['quantity'] = 'quantity'
      @_hash['name'] = 'name'
      @_hash
    end

    def initialize(amount = nil,
                   description = nil,
                   pricing_scheme = nil,
                   price_bracket = nil,
                   subscription_item_id = nil,
                   quantity = nil,
                   name = nil)
      @amount = amount
      @description = description
      @pricing_scheme = pricing_scheme
      @price_bracket = price_bracket
      @subscription_item_id = subscription_item_id
      @quantity = quantity
      @name = name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash['amount']
      description = hash['description']
      pricing_scheme = GetPricingSchemeResponse.from_hash(hash['pricing_scheme']) if
        hash['pricing_scheme']
      price_bracket = GetPriceBracketResponse.from_hash(hash['price_bracket']) if
        hash['price_bracket']
      subscription_item_id = hash['subscription_item_id']
      quantity = hash['quantity']
      name = hash['name']

      # Create object from extracted values.
      GetInvoiceItemResponse.new(amount,
                                 description,
                                 pricing_scheme,
                                 price_bracket,
                                 subscription_item_id,
                                 quantity,
                                 name)
    end
  end
end
