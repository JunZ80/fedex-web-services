# encoding: UTF-8
# Generated by wsdl2ruby (SOAP4R-NG/2.0.3)
require_relative 'ShipServiceDefinitions.rb'
require_relative 'ShipServiceDefinitionsMappingRegistry.rb'
require 'soap/rpc/driver'

module FedexWebServices::Soap::Ship

class ShipPortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://wsbeta.fedex.com:443/web-services/ship"

  Methods = [
    [ "http://fedex.com/ws/ship/v26/createPendingShipment",
      "createPendingShipment",
      [ [:in, "CreatePendingShipmentRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "CreatePendingShipmentRequest"]],
        [:out, "CreatePendingShipmentReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "CreatePendingShipmentReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://fedex.com/ws/ship/v26/processTag",
      "processTag",
      [ [:in, "ProcessTagRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "ProcessTagRequest"]],
        [:out, "ProcessTagReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "ProcessTagReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://fedex.com/ws/ship/v26/processShipment",
      "processShipment",
      [ [:in, "ProcessShipmentRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "ProcessShipmentRequest"]],
        [:out, "ProcessShipmentReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "ProcessShipmentReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://fedex.com/ws/ship/v26/cancelPendingShipment",
      "cancelPendingShipment",
      [ [:in, "CancelPendingShipmentRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "CancelPendingShipmentRequest"]],
        [:out, "CancelPendingShipmentReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "CancelPendingShipmentReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://fedex.com/ws/ship/v26/deleteTag",
      "deleteTag",
      [ [:in, "DeleteTagRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "DeleteTagRequest"]],
        [:out, "ShipmentReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "ShipmentReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://fedex.com/ws/ship/v26/deleteShipment",
      "deleteShipment",
      [ [:in, "DeleteShipmentRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "DeleteShipmentRequest"]],
        [:out, "ShipmentReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "ShipmentReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://fedex.com/ws/ship/v26/validateShipment",
      "validateShipment",
      [ [:in, "ValidateShipmentRequest", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "ValidateShipmentRequest"]],
        [:out, "ShipmentReply", ["::SOAP::SOAPElement", "http://fedex.com/ws/ship/v26", "ShipmentReply"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = ShipServiceDefinitionsMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = ShipServiceDefinitionsMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
