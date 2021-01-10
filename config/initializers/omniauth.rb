Rails.application.config.middleware.use OmniAuth::Builder do 
    provider :google_oauth2, '30780069470-mvr17dq5kdkl7vs7bn1rjg9m7tf7tqlf.apps.googleusercontent.com' , '9jpXVttzM8gcdYOGEmKk1k-G'
end