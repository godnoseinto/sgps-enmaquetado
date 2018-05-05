$(function() {

	var names = [ [ "Redesign website", [ 0, 7 ] ],
			[ "Write new content", [ 1, 4 ] ],
			[ "Apply new styles", [ 3, 6 ] ], [ "Review", [ 7, 7 ] ],
			[ "Deploy", [ 8, 9 ] ], [ "Go Live!", [ 10, 10 ] ] ];

	var tasks = names.map(function(name, i) {
		var today = new Date();
		var start = new Date(today.getFullYear(), today.getMonth(), today
				.getDate());
		var end = new Date(2019, 2, 28);
		start.setDate(today.getDate() + name[1][0]);
		end.setDate(today.getDate() + name[1][1]);
		return {
			start : start,
			end : new Date(2018, 05, 28),
			name : name[0],
			id : "Task " + i,
			progress : parseInt(Math.random() * 100, 10)
		}
	});
	tasks[1].dependencies = "Task 0"
	tasks[2].dependencies = "Task 1"
	tasks[3].dependencies = "Task 2"
	tasks[5].dependencies = "Task 4"

		$(".gantt").gantt({
			source: [{
				name: "Sprint 0",
				desc: "Analysis",
				values: [{
					from: "/Date(1320192000000)/",
					to: "/Date(1322401600000)/",
					label: "Requirement Gathering",
					customClass: "ganttRed"
				}]
			},{
				name: " ",
				desc: "Scoping",
				values: [{
					from: "/Date(1322611200000)/",
					to: "/Date(1323302400000)/",
					label: "Scoping",
					customClass: "ganttRed"
				}]
			},{
				name: "Sprint 1",
				desc: "Development",
				values: [{
					from: "/Date(1323802400000)/",
					to: "/Date(1325685200000)/",
					label: "Development",
					customClass: "ganttGreen"
				}]
			},{
				name: " ",
				desc: "Showcasing",
				values: [{
					from: "/Date(1325685200000)/",
					to: "/Date(1325695200000)/",
					label: "Showcasing",
					customClass: "ganttBlue"
				}]
			},{
				name: "Sprint 2",
				desc: "Development",
				values: [{
					from: "/Date(1326785200000)/",
					to: "/Date(1325785200000)/",
					label: "Development",
					customClass: "ganttGreen"
				}]
			},{
				name: " ",
				desc: "Showcasing",
				values: [{
					from: "/Date(1328785200000)/",
					to: "/Date(1328905200000)/",
					label: "Showcasing",
					customClass: "ganttBlue"
				}]
			},{
				name: "Release Stage",
				desc: "Training",
				values: [{
					from: "/Date(1330011200000)/",
					to: "/Date(1336611200000)/",
					label: "Training",
					customClass: "ganttOrange"
				}]
			},{
				name: " ",
				desc: "Deployment",
				values: [{
					from: "/Date(1336611200000)/",
					to: "/Date(1338711200000)/",
					label: "Deployment",
					customClass: "ganttOrange"
				}]
			},{
				name: " ",
				desc: "Warranty Period",
				values: [{
					from: "/Date(1336611200000)/",
					to: "/Date(1349711200000)/",
					label: "Warranty Period",
					customClass: "ganttOrange"
				}]
			}],
			navigate: "scroll",
			maxScale: "hours",
			itemsPerPage: 10,
			onItemClick: function(data) {
				alert("Item clicked - show some details");
			},
			onAddClick: function(dt, rowId) {
				alert("Empty space clicked - add an item!");
			},
			onRender: function() {
				if (window.console && typeof console.log === "function") {
					console.log("chart rendered");
				}
			}
		});

		$(".gantt").popover({
			selector: ".bar",
			title: "I'm a popover",
			content: "And I'm the content of said popover.",
			trigger: "hover"
		});

});