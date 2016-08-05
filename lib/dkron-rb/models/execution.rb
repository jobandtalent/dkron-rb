=begin
Dkron REST API

You can communicate with Dkron using a RESTful JSON API over HTTP. Dkron nodes usually listen on port `8080` for API requests. All examples in this section assume that you've found a running leader at `localhost:8080`.\n\nDkron implements a RESTful JSON API over HTTP to communicate with software clients. Dkron listens in port `8080` by default. All examples in this section assume that you're using the default port.\n\nDefault API responses are unformatted JSON add the `pretty=true` param to format the response.\n

OpenAPI spec version: 0.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'date'

module Dkron
  # An execution represents a timed job run.
  class Execution
    # job name
    attr_accessor :job_name

    # start time of the execution
    attr_accessor :started_at

    # when the execution finished running
    attr_accessor :finished_at

    # the execution run successfuly
    attr_accessor :success

    # partial output of the command execution
    attr_accessor :output

    # name of the node that executed the command
    attr_accessor :node_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'job_name' => :'job_name',
        
        :'started_at' => :'started_at',
        
        :'finished_at' => :'finished_at',
        
        :'success' => :'success',
        
        :'output' => :'output',
        
        :'node_name' => :'node_name'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'job_name' => :'String',
        :'started_at' => :'DateTime',
        :'finished_at' => :'DateTime',
        :'success' => :'BOOLEAN',
        :'output' => :'String',
        :'node_name' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'job_name']
        self.job_name = attributes[:'job_name']
      end
      
      if attributes[:'started_at']
        self.started_at = attributes[:'started_at']
      end
      
      if attributes[:'finished_at']
        self.finished_at = attributes[:'finished_at']
      end
      
      if attributes[:'success']
        self.success = attributes[:'success']
      end
      
      if attributes[:'output']
        self.output = attributes[:'output']
      end
      
      if attributes[:'node_name']
        self.node_name = attributes[:'node_name']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          job_name == o.job_name &&
          started_at == o.started_at &&
          finished_at == o.finished_at &&
          success == o.success &&
          output == o.output &&
          node_name == o.node_name
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [job_name, started_at, finished_at, success, output, node_name].hash
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
