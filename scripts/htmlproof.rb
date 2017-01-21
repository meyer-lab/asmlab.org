#!/usr/bin/env ruby

require 'html-proofer'

HTMLProofer.check_directory('./_site', {
	:parallel => {
		:in_processes => 4,
	},
	:check_html => true,
	:cache => {
		:timeframe => '1w',
	},
	:url_ignore => [/www.nature.com/, /insight.jci.org/, /mit-cispro-cloud/],
	:typhoeus => {
		:timeout => 15, # seconds
	},
	:verbose => true,
}).run
