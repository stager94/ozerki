App.factory 'Booking', ['$resource', ($resource) ->
	$resource '/api/v1/bookings'
]

App.factory 'Time', ['$resource', '$timeout', ($resource, $timeout) ->
	$resource = {}
	(tick = ->
		$resource.now = new Date().toString()
		$timeout tick, 3000
	)()
	$resource
]