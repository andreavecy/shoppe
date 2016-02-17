module Shoppe
  class SettingsController < ApplicationController

    before_filter { @active_nav = :settings }
    #IF you've registered your admin with a different name, REMEMBER to replace it
    #It kinda works with everything identifiable on current_user, like email_address
    def update
      if current_user.full_name == "Default Admin"
        Shoppe::Setting.update_from_hash(params[:settings].permit!)
        redirect_to :settings, :notice => t('shoppe.settings.update_notice')
      else
        if Shoppe.settings.demo_mode?
          raise Shoppe::Error, t('shoppe.settings.demo_mode_error')
        end
        Shoppe::Setting.update_from_hash(params[:settings].permit!)
        redirect_to :settings, :notice => t('shoppe.settings.update_notice')
      end
    end
  end
end