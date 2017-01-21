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
	:url_ignore => [/www.nature.com/, /insight.jci.org/, /mit-cispro-cloud/, /nature20141/, /www.mit.edu/, /app.asana.com/],
	:typhoeus => {
		:timeout => 15, # seconds
	},
	:verbose => true,
}).run
