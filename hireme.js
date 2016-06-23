var messageModified = false;

function calculateEstimate() {
	var time = +hourinput.value*60 + +minuteinput.value;
	rate = 3.5

	var total = time*rate;

	if (nonprofit.checked) total *= 0.7
	if (min.checked) total *= 0.5
	if (fullstack.checked) total *= 1.15
	if (hackhands.checked) total *= 1.2

	totalestimate.innerHTML = '$' + Math.round(total)

	var timeText = ''

	if (+hourinput.value !== 0) timeText = hourinput.value + ' hours' + timeText
	if (+minuteinput.value !== 0 && +hourinput.value !== 0) timeText += ' and '
	if (+minuteinput.value !== 0) timeText += minuteinput.value + ' minutes'

	if (+hourinput.value === 1) timeText = timeText.replace(/hours/g, 'hour')
	if (+minuteinput.value === 1) timeText = timeText.replace(/minutes/g, 'minute')

	if (time === 0) timeText = 'no time at all'

	if (!messageModified) {
		if (time >= 0) message.value = "Hi Owen,\n\nI'd like to hire you for " + timeText + ' to work on ______.'
		else message.value = "Hi Owen,\n\nI'd like you to pay me to work on something, entirely disregarding the purpose of this form."

		message.value += "\n\nCheers, _____"
	}

	if(window.mixpanel) mixpanel.track('Estimate', {'Total': total, 'Time': time, 'Min': min.checked, 'Nonprofit': nonprofit.checked, 'Fullstack': fullstack.checked, 'Hackhands': hackhands.checked, 'Modified': messageModified})
}

calculateEstimate()

var inputs = document.querySelectorAll('.pod input');

for (var i=0; i<inputs.length; i++) {
	inputs[i].onchange = inputs[i].keyup = inputs[i].mouseup = inputs[i].oninput = calculateEstimate
}