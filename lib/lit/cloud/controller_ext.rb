# frozen_string_literal: true

# Create a dummy Rails engine only for the purpose of nicely reading
# the root directory of Lit::Cloud because Rails engines have a nicely
# implemented root directory retrieval.
class Lit::Cloud::DummyEngine < Rails::Engine; end

Lit::ApplicationController.class_eval do
  before_action do
    prepend_view_path(Lit::Cloud::DummyEngine.root.join('app', 'views'))
  end
end
