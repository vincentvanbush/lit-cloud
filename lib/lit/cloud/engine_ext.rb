# frozen_string_literal: true

require 'lit/engine'

Lit::Engine.class_eval do
  initializer(:controller_ext) { require 'lit/cloud/controller_ext' }
end
