Rails.application.routes.draw do
  get("/", { :controller => "calculation", :action => "home"})

  get("/square/new", { :controller => "calculation", :action => "square_cal"})

  get("/square_root/new", { :controller => "calculation", :action => "square_root_cal"})

  get("/payment/new", { :controller => "calculation", :action => "payment_cal"})

  get("/random/new", { :controller => "calculation", :action => "random_cal"})

  get("/square/results", { :controller => "calculation", :action => "square"})

  get("/square_root/results", { :controller => "calculation", :action => "square_root"})

  get("/payment/results", { :controller => "calculation", :action => "payment"})

  get("/random/results", { :controller => "calculation", :action => "random"})
end
