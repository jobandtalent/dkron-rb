=begin
Dkron REST API

You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.\n\nDkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.\n\nDefault API responses are unformatted JSON add the `pretty=true` param to format the response.\n

OpenAPI spec version: 0.7.2

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'date'

module Dkron
  # A Job represents a scheduled task to execute.
  class Job
    # -
    attr_accessor :name

    # Cron expression for the job.
    attr_accessor :schedule

    # Command to run.
    attr_accessor :command

    # -
    attr_accessor :shell

    # -
    attr_accessor :owner

    # -
    attr_accessor :owner_email

    # -
    attr_accessor :success_count

    # -
    attr_accessor :error_count

    # -
    attr_accessor :last_success

    # -
    attr_accessor :last_error

    # -
    attr_accessor :disabled

    # Tags asociated with this node
    attr_accessor :tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'name' => :'name',
        
        :'schedule' => :'schedule',
        
        :'command' => :'command',
        
        :'shell' => :'shell',
        
        :'owner' => :'owner',
        
        :'owner_email' => :'owner_email',
        
        :'success_count' => :'success_count',
        
        :'error_count' => :'error_count',
        
        :'last_success' => :'last_success',
        
        :'last_error' => :'last_error',
        
        :'disabled' => :'disabled',
        
        :'tags' => :'tags'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'schedule' => :'String',
        :'command' => :'String',
        :'shell' => :'BOOLEAN',
        :'owner' => :'String',
        :'owner_email' => :'String',
        :'success_count' => :'Integer',
        :'error_count' => :'Integer',
        :'last_success' => :'DateTime',
        :'last_error' => :'DateTime',
        :'disabled' => :'BOOLEAN',
        :'tags' => :'Hash<String, String>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'schedule']
        self.schedule = attributes[:'schedule']
      end
      
      if attributes[:'command']
        self.command = attributes[:'command']
      end
      
      if attributes[:'shell']
        self.shell = attributes[:'shell']
      end
      
      if attributes[:'owner']
        self.owner = attributes[:'owner']
      end
      
      if attributes[:'owner_email']
        self.owner_email = attributes[:'owner_email']
      end
      
      if attributes[:'success_count']
        self.success_count = attributes[:'success_count']
      end
      
      if attributes[:'error_count']
        self.error_count = attributes[:'error_count']
      end
      
      if attributes[:'last_success']
        self.last_success = attributes[:'last_success']
      end
      
      if attributes[:'last_error']
        self.last_error = attributes[:'last_error']
      end
      
      if attributes[:'disabled']
        self.disabled = attributes[:'disabled']
      end
      
      if attributes[:'tags']
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          schedule == o.schedule &&
          command == o.command &&
          shell == o.shell &&
          owner == o.owner &&
          owner_email == o.owner_email &&
          success_count == o.success_count &&
          error_count == o.error_count &&
          last_success == o.last_success &&
          last_error == o.last_error &&
          disabled == o.disabled &&
          tags == o.tags
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [name, schedule, command, shell, owner, owner_email, success_count, error_count, last_success, last_error, disabled, tags].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = Dkron.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
