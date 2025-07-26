---
title: ClassLuaTest
categories: [docs]
toc: true
generated: true
badge: Class
badge_color: '#49C4AF'
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
blockquote {
    margin-top: 0.4rem;
    margin-bottom: 0.25rem; 
}
blockquote p {
    margin-bottom: 0 !important;
    font-size: 0.8em !important;
}
table {width: 100%; }
td {width: 1px; }
td:last-child {width: 100%; }
#main {max-width: 1500px !important;}
h2.constructor::before {
  font-family: "Font Awesome 6 Free";
  font-weight: 900;
  content: "\f013";
  margin-right: 0.5em;
}
h2.readonly::before {
  font-family: "Font Awesome 6 Free";
  font-weight: 900;
  content: "\f023";
  margin-right: 0.5em;
}
h2.property::before {
  font-family: "Font Awesome 6 Free";
  font-weight: 900;
  content: "\f466";
  margin-right: 0.5em;
}
h2.function::before {
  font-family: "Font Awesome 6 Free";
  font-weight: 900;
  content: "\f0e7";
  margin-right: 0.5em;
}
</style>
            
An example class

## Constructors
{:.constructor}

### ClassLuaTest.__new()
> No params
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ClassLuaTest.__new</span>()
</pre>
</div>
</div>

### ClassLuaTest.__new(number)
> One param
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ClassLuaTest.__new</span>(<span class='o'>data</span>: <span class='kt'>number</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>data</span> {:/} | {::nomarkdown} <span class='c'>Param</span> {:/} |
{:class="table table-bordered highlight"}

## Constants
*The value of a constant cannot be changed*
{: .notice--warning}

| Type | Name | Value | Description
| --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>INT_CONST</span> {:/} | {::nomarkdown} <span class='m'>124</span> {:/} | {::nomarkdown} <span class='c'>An actual int constant</span> {:/} |
{:class="table table-bordered highlight"}

## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Field</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>StaticField</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <span class='m'>0</span> {:/} | {::nomarkdown} <span class='c'>Yes it also has documentation</span> {:/} |
{:class="table table-bordered highlight"}

## Properties
{:.property}

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_Property</span>() {:/} | {::nomarkdown} <span class='nf'>set_Property</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_StaticProperty</span>() {:/} | {::nomarkdown} <span class='nf'>set_StaticProperty</span>(<span class='o'>val</span>) {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <span class='m'>0</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions
{:.function}

*Requires an instance!*
{: .notice--warning}

### Method
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Method</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

## Static Functions
*Do not require an instance!*
{: .notice--warning}

### StaticMethod
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>StaticMethod</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

