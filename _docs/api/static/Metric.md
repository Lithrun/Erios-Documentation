---
# This file was automatically generated on 2025-03-24 by the Lunaris Documentation Generator
title: Metric
categories: [docs]
toc: true
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
</style>
            
**STATIC CLASS**: A single instance is shared throughout the game
{: .notice--warning}


## Properties

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_AverageFPS</span>() {:/} | {::nomarkdown} <i class ='fas fa-times'></i> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <span class='m'>1</span> {:/} | {::nomarkdown} <span class='c'>Returns the average, based the last 5 seconds, frames per second. Rounded to one decimal. This value is only updated every second</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_CurrentFPS</span>() {:/} | {::nomarkdown} <i class ='fas fa-times'></i> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <span class='m'>1</span> {:/} | {::nomarkdown} <span class='c'>Returns the current frames per second. Rounded to one decimal. This value is only updated every second</span> {:/} |
{:class="table table-bordered highlight"}

