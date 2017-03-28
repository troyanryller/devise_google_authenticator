module DeviseGoogleAuthenticator
  class Engine < ::Rails::Engine # :nodoc:
    (DeviseGoogleAuthenticator.rails5? ? ActiveSupport::Reloader : ActionDispatch::Callbacks).to_prepare do
      DeviseGoogleAuthenticator::Patches.apply
    end
  end
end
