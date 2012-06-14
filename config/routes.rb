Rails.application.routes.draw do
  controller :robokassa do
    get "robokassa/:token/notify"   => :notify,  :as => :robokassa_notification

    get "robokassa/success"  => :success, :as => :robokassa_on_success
    get "robokassa/fail"     => :fail,    :as => :robokassa_on_fail
  end
end
