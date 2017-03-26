#!/usr/bin/env ruby

require 'html-proofer'

HTMLProofer.check_directory('./_site', {
	:check_html => true,
	:cache => {
		:timeframe => '6M',
	},
	:url_ignore => [/mit-cispro-cloud/],
	:typhoeus => {
		:timeout => 15, # seconds
	},
	:verbose => true,
}).run
