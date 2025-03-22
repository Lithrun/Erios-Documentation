---
# This file was automatically generated on 2025-03-22 by the Lunaris Documentation Generator
title: ChallengeManager
categories: [docs]
toc: true
toc_sticky: true
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
            


## Constructors
### ChallengeManager.__new(Challenge)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ChallengeManager.__new</span>(<span class='o'>challenge</span>: <span class='kt'>Challenge</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Challenge</span> {:/} | {::nomarkdown} <span class='o'>challenge</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>Event__instance</span> {:/} | {::nomarkdown} <span class='o'>OnReady</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Properties

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>Challenge</span> {:/} | {::nomarkdown} <span class='nf'>get_Challenge</span>() {:/} | {::nomarkdown} <i class ='fas fa-times'></i> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Methods
*Requires an instance!*
{: .notice--warning}

### Restart
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Restart</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Finish
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Finish</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Spawn(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Spawn</span>(<span class='o'>id</span>: <span class='kt'>string</span>) -> <span class='kt'>Entity</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>id</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Static Methods
*Do not require an instance!*
{: .notice--warning}

### Start(Challenge)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Start</span>(<span class='o'>challenge</span>: <span class='kt'>Challenge</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Challenge</span> {:/} | {::nomarkdown} <span class='o'>challenge</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

