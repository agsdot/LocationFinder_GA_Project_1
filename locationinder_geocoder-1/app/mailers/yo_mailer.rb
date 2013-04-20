class YoMailer < ActionMailer::Base



  default from: "jonathanlai@gmail.com"

  def form_email(to, subject, body, search)
  	@body = body
  	@search = search
  	@location = Location.near(@search, 500, :order => :distance).first

  	mail(:to => to, :subject => "The subject is: #{subject}")
  	#any instance variable you set here is available in your views
  end


end
