
SwellMedia.configure do |config|
	config.log_events = true
	config.app_name = 'Living AMRAP'
	config.app_description = 'Remarkable Fitness for Regular People'
	config.app_logo = ''
	config.twitter_handle = '@livingamrap'
	config.google_analytics_code = ( ENV['GOOGLE_ANALYTICS_CODE'] || "" )
	config.google_analytics_site = ( ENV['GOOGLE_ANALYTICS_SITE'] || '' )
	config.google_analytics_debug = false
	config.google_analytics_event_logging = true
	config.default_protocol = 'https' if Rails.env.production?
	config.default_user_status = :active
	config.app_host = ENV['APP_DOMAIN'] || 'localhost:3000'
	config.asset_host = ENV['ASSET_HOST']
	config.reserved_words += [ 'ambassador', 'ambassadors', 'shop', 'shopswell', 'playswell', 'shopping', 'deal', 'deals', 'products', 'top_products', 'staff', 'top_deals', 'top-products', 'top-deals', 'awards', 'users', 'compare', 'comparison', 'comparisions', 'community', 'versus', 'latest', 'serendipity', 'feed' ]

	#config.root_controller_parent_class = RootController

	config.froala_editor_key = 'CqkkuupmefC10obc=='

	config.contact_email_to = ENV['CONTACT_EMAIL_TO'] || 'support@livingamrap.com'
	config.contact_email_from = ENV['CONTACT_EMAIL_FROM'] || 'support@livingamrap.com'

	config.google_analytics_event_logging_white_list = ['registration']
end

