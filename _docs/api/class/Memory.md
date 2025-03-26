---
# This file was automatically generated on 2025-03-26 by the Lunaris Documentation Generator
title: Memory
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
### Memory.__new()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Memory.__new</span>()
</pre>
</div>
</div>

## Functions
*Requires an instance!*
{: .notice--warning}

### Add(EUID,string,Object)
> Adds a to the for
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Add</span>(<span class='o'>referenceId</span>: <span class='kt'>EUID</span>,<span class='o'>key</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>Object</span>) -> <span class='kt'>Object</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>EUID</span> {:/} | {::nomarkdown} <span class='o'>referenceId</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Object</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Add(string,Object)
> Adds a to the
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Add</span>(<span class='o'>key</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>Object</span>) -> <span class='kt'>Object</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Object</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Get(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Get</span>(<span class='o'>key</span>: <span class='kt'>string</span>) -> <span class='kt'>Object</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Get(EUID,string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Get</span>(<span class='o'>referenceId</span>: <span class='kt'>EUID</span>,<span class='o'>key</span>: <span class='kt'>string</span>) -> <span class='kt'>Object</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>EUID</span> {:/} | {::nomarkdown} <span class='o'>referenceId</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Set(string,Object)
> Overrides the
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Set</span>(<span class='o'>key</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>Object</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Object</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

