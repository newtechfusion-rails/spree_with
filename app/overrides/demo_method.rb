Deface::Override.new(:virtual_path  => "spree/checkout/registration",
                     :insert_after  => "div#registration",
                     :template      => "../views/spree/checkout/demo_method.html.erb",
                     :name          => "demo_method")


