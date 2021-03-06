# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Response object for getting a discount
  class GetDiscountResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :value

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :discount_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [GetSubscriptionResponse]
    attr_accessor :subscription

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :cycles

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :deleted_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['value'] = 'value'
      @_hash['discount_type'] = 'discount_type'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['subscription'] = 'subscription'
      @_hash['cycles'] = 'cycles'
      @_hash['deleted_at'] = 'deleted_at'
      @_hash
    end

    def initialize(id = nil,
                   value = nil,
                   discount_type = nil,
                   status = nil,
                   created_at = nil,
                   subscription = nil,
                   cycles = nil,
                   deleted_at = nil)
      @id = id
      @value = value
      @discount_type = discount_type
      @status = status
      @created_at = created_at
      @subscription = subscription
      @cycles = cycles
      @deleted_at = deleted_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      value = hash['value']
      discount_type = hash['discount_type']
      status = hash['status']
      created_at = DateTime.rfc3339(hash['created_at']) if hash['created_at']
      subscription = GetSubscriptionResponse.from_hash(hash['subscription']) if
        hash['subscription']
      cycles = hash['cycles']
      deleted_at = DateTime.rfc3339(hash['deleted_at']) if hash['deleted_at']

      # Create object from extracted values.
      GetDiscountResponse.new(id,
                              value,
                              discount_type,
                              status,
                              created_at,
                              subscription,
                              cycles,
                              deleted_at)
    end
  end
end
