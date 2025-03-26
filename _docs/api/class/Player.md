---
# This file was automatically generated on 2025-03-26 by the Lunaris Documentation Generator
title: Player
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
### Player.__new()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Player.__new</span>()
</pre>
</div>
</div>

## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Speed</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>InteractableDetector__instance</span> {:/} | {::nomarkdown} <span class='o'>Detection</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Node3D__instance</span> {:/} | {::nomarkdown} <span class='o'>UI3D</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Inventory__instance</span> {:/} | {::nomarkdown} <span class='o'>Inventory_UI</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Equipment__instance</span> {:/} | {::nomarkdown} <span class='o'>Equipment_UI</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>SkillMenu__instance</span> {:/} | {::nomarkdown} <span class='o'>UI_Skills</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>DialogueMenu__instance</span> {:/} | {::nomarkdown} <span class='o'>UI_Dialogue</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions
*Requires an instance!*
{: .notice--warning}

### SpeakTo(Humanoid)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SpeakTo</span>(<span class='o'>target</span>: <span class='kt'>Humanoid</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Humanoid</span> {:/} | {::nomarkdown} <span class='o'>target</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Save
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Save</span>() -> <span class='kt'>PlayerData</span>
</pre>
</div>
</div>

### Load(PlayerData)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Load</span>(<span class='o'>data</span>: <span class='kt'>PlayerData</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>PlayerData</span> {:/} | {::nomarkdown} <span class='o'>data</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

