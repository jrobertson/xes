#!/usr/bin/env ruby

# file: xes.rb

require 'rexml/document'

class XES
  include REXML
  
  def initialize(xml)
    @doc = Document.new(xml)
  end

  def select_node(selector)
    XPath.match(@doc.root, "//%s" % selector.split(' ').join('//'))
  end
end
