App.controller 'BookingCtrl', ['$scope', '$timeout', 'Time', 'Booking', ($scope, $timeout, Time, Booking) ->
	(tick = ->
		Booking.query (model) ->
			$scope.booking_count = model
			$timeout tick, 1000
	)()
]