Before do
  @browser = Watir::Browser.new :chrome
  DefaultPlatform.register Experience::Web::Platform.new(@browser)
  @browser.goto(p File.expand_path('tutorial.html',File.dirname(__FILE__)))
end

After do
  @browser.close
end