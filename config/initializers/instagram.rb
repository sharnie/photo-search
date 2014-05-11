require "instagram"

Instagram.configure do |config|
	config.client_id = "73a37dc40e294594a83cb4ec50d9adcd"
	config.access_token = "353749247.4f6bccc.e0ef76fa6bc54751994cf2ba58a3f7f2"
end

CALLBACK_URL = "http://localhost:3000/oauth/callback"
SCOPE = "likes+comments+relationships"