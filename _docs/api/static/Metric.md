---
# This file was automatically generated on 2025-05-28 by the Lunaris Documentation Generator
title: Metric
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
            
This static class provides access to a number of different metrics from Erios. Some of the metrics are updated only every second, so it is advised to use the Game.OnSecond event

## ReadOnly

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>AverageFPS</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Returns the average, based the last 5 seconds, frames per second. Rounded to one decimal. This value is only updated every second</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>CurrentFPS</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Returns the current frames per second. Rounded to one decimal. This value is only updated every second</span> {:/} |
{:class="table table-bordered highlight"}

