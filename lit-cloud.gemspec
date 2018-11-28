# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'lit/cloud/version'

Gem::Specification.new do |s|
  s.name        = 'lit-cloud'
  s.version     = Lit::Cloud::VERSION
  s.authors     = ['Michał Buszkiewicz']
  s.email       = ['mbuszkiewicz@prograils.com']
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/prograils/lit-cloud'
  s.summary     =
    'Cloud translation toolkit for Lit - the database powered i18n backend'
  s.description =
    'Translate your apps with even more pleasure to any language, ' \
    'aided by your cloud translation provider of choice.'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'README.md']
  s.add_dependency 'lit', '~> 0.4.pre.alpha.2'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'google-cloud-translate'
  s.add_development_dependency 'minitest', '~> 5.11.3'
  s.add_development_dependency 'minitest-vcr', '~> 1.4.0'
  s.add_development_dependency 'pry-byebug', '~> 3.6.0'
  s.add_development_dependency 'vcr', '~> 4.0.0'
  s.add_development_dependency 'webmock', '~> 3.4.2'
end
