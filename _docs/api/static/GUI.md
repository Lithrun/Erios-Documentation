---
# This file was automatically generated on 2025-03-26 by the Lunaris Documentation Generator
title: GUI
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
            


## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>LabelWrapper__instance</span> {:/} | {::nomarkdown} <span class='o'>Label</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} Erios.Core.LabelWrapper {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions

### AsGUI(fun(arg: GuiMapper__T))
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AsGUI</span>(<span class='o'>options</span>: <span class='kt'>fun(arg: GuiMapper__T)</span>) -> <span class='kt'>Control[]</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>fun(arg: GuiMapper__T)</span> {:/} | {::nomarkdown} <span class='o'>options</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AsGUI(GuiCustomization)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AsGUI</span>(<span class='o'>customization</span>: <span class='kt'>GuiCustomization</span>) -> <span class='kt'>Control[]</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>GuiCustomization</span> {:/} | {::nomarkdown} <span class='o'>customization</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AsControl
> Converts a type to a Godot
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AsControl</span>() -> <span class='kt'>Control</span>
</pre>
</div>
</div>

