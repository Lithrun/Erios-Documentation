---
# This file was automatically generated on 2025-03-26 by the Lunaris Documentation Generator
title: TimeService
categories: [docs]
toc: true
badge: Static
badge_color: '#FFA500'
---
<style>
h2 {
    margin-top: 1rem;
    margin-bottom: 0.5rem;
    padding: 0;
}

h3 {
    margin-top: 0.25rem;
    margin-bottom: 0.25rem;
}

.notice--warning {
    margin-top: 0.25rem !important;
    margin-bottom: 1rem !important;
}
table {width: 100%; }
td {width: 1px; }
td:last-child {width: 100%; }
#main {max-width: 1500px !important;}
</style>
            


## Constants
*The value of a constant cannot be changed*
{: .notice--warning}

| Type | Name | Value | Description
| --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>TickFrequency</span> {:/} | {::nomarkdown} <span class='m'>0.1</span> {:/} | {::nomarkdown} <span class='c'>Determines how often a time Tick occurs.</span> {:/} |
{:class="table table-bordered highlight"}

## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>TicksPerSecond</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Determines how many ticks a second requires. Increasing or decreasing this value will speed-up/slow-down time</span> {:/} |
| {::nomarkdown} <span class='kt'>Event__boolean__instance</span> {:/} | {::nomarkdown} <span class='o'>OnPause</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Invoked whenever the game is paused/unpaused</span> {:/} |
| {::nomarkdown} <span class='kt'>Event__number__instance</span> {:/} | {::nomarkdown} <span class='o'>OnSecondPassed</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>OnSecondPassed is called whenever a second has passed</span> {:/} |
| {::nomarkdown} <span class='kt'>Event__number__instance</span> {:/} | {::nomarkdown} <span class='o'>OnTenthOfSecond</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Invoked every 0.1s</span> {:/} |
| {::nomarkdown} <span class='kt'>Event__number__instance</span> {:/} | {::nomarkdown} <span class='o'>OnHourPassed</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>OnHourPassed is called whenever an hour has passed</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>Debug</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## ReadOnly

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>TotalTicks</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Properties

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_Ticks</span>() {:/} | {::nomarkdown} <span class='nf'>set_Ticks</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>0.1s is the equivalent to a single tick</span> {:/} |
{:class="table table-bordered highlight"}

## Functions
*Requires an instance!*
{: .notice--warning}

### Pause
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Pause</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### UnPause
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>UnPause</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Now
> Gets the current time
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Now</span>() -> <span class='kt'>EriosDateTime</span>
</pre>
</div>
</div>

