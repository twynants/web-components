<template id="n-input-date">
	<div class="n-input-date">
		<table class="table">
			<caption>
				<a href="javascript:void(0)" class="n-input-date-previous n-icon n-icon-chevron-left" @click="date = incrementMonth(-1)" v-show="canIncrementMonth(-1)"></a>

				<span class="month">{{ months[date.getMonth()] }} {{ date.getFullYear() }}</span>

				<a href="javascript:void(0)" class="n-input-date-next n-icon n-icon-chevron-right" @click="date = incrementMonth(1)" v-show="canIncrementMonth(1)"></a>
			</caption>
			<thead>
				<tr>
					<th>%{date:Mon}</th>
					<th>%{date:Tue}</th>
					<th>%{date:Wed}</th>
					<th>%{date:Thu}</th>
					<th>%{date:Fri}</th>
					<th>%{date:Sat}</th>
					<th>%{date:Sun}</th>
				</tr>
			</thead>
			<tbody>
				<tr v-for="week in weeks">
					<td v-for="day in week" :class="{'n-input-date-today': day.value && isToday(day.value), 'n-input-date-selected': day.value && isSelected(day.value), 'n-input-date-available': day.value && isAvailable(day.value)}">
						<a auto-close v-if="day.label" class="n-input-date-label" href="javascript:void(0)" @click="select(day.value)">{{ day.label }}</a>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="n-input-date-legend" v-if="allow">
			<span class="n-input-date-available">%{date:Available Dates}</span>
			<span class="n-input-date-selected">%{date:Selected Date}</span>
		</div>
	</div>
</template>