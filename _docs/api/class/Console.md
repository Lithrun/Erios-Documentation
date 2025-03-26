---
# This file was automatically generated on 2025-03-26 by the Lunaris Documentation Generator
title: Console
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
            
The Erios Console

## Constructors
### Console.__new()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Console.__new</span>()
</pre>
</div>
</div>

## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>Console__instance</span> {:/} | {::nomarkdown} <span class='o'>Instance</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <Control#32900122038> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions
*Requires an instance!*
{: .notice--warning}

### Write(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Write</span>(<span class='o'>text</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Toggle
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Toggle</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Show
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Show</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Hide
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Hide</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

## Static Functions
*Do not require an instance!*
{: .notice--warning}

### Error(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Error</span>(<span class='o'>text</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Warning(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Warning</span>(<span class='o'>text</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Log(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Log</span>(<span class='o'>text</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Register(string,Closure)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Register</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>closure</span>: <span class='kt'>Closure</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Closure</span> {:/} | {::nomarkdown} <span class='o'>closure</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

