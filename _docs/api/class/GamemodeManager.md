---
# This file was automatically generated on 2025-03-26 by the Lunaris Documentation Generator
title: GamemodeManager
categories: [docs]
toc: true
badge: Class
badge_color: '#007bff'
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
            


## Constructors
### GamemodeManager.__new()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GamemodeManager.__new</span>()
</pre>
</div>
</div>

## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>SyncEvent__instance</span> {:/} | {::nomarkdown} <span class='o'>OnReady</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Invoked when the game starts</span> {:/} |
| {::nomarkdown} <span class='kt'>SyncEvent__instance</span> {:/} | {::nomarkdown} <span class='o'>OnTick</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Invoked every gamemode tick (0.1s)</span> {:/} |
| {::nomarkdown} <span class='kt'>SyncEvent__instance</span> {:/} | {::nomarkdown} <span class='o'>OnSecond</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Invoked every second</span> {:/} |
{:class="table table-bordered highlight"}

## Functions
*Requires an instance!*
{: .notice--warning}

### AddGUI(Control)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddGUI</span>(<span class='o'>proxy</span>: <span class='kt'>Control</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Control</span> {:/} | {::nomarkdown} <span class='o'>proxy</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

