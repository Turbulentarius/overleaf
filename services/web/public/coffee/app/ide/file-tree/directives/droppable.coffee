define [
	"base"
], (App) ->
	App.directive "droppable", () ->
		return {
			scope: {
				onDropCallback: "="
			}
			link: (scope, element, attrs) ->
				element.droppable
					greedy: true
					hoverClass: "droppable-hover"
					drop: scope.onDropCallback
		}