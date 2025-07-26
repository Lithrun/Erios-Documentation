---
title: Euid
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
            


## Constructors
{:.constructor}

### Euid.__new()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Euid.__new</span>()
</pre>
</div>
</div>

### Euid.__new(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Euid.__new</span>(<span class='o'>value</span>: <span class='kt'>string</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## ReadOnly
{:.readonly}

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>EUIDCategory</span> {:/} | {::nomarkdown} <span class='nf'>Category</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Euid</span> {:/} | {::nomarkdown} <span class='nf'>Empty</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} X00-0000 {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Properties
{:.property}

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_Value</span>() {:/} | {::nomarkdown} <span class='nf'>set_Value</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions
{:.function}

*Requires an instance!*
{: .notice--warning}

### Load
> Tries to load an EUID resource from the database
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Load</span>() -> <span class='kt'>Resource</span>
</pre>
</div>
</div>

## Static Functions
*Do not require an instance!*
{: .notice--warning}

### Random(EUIDCategory)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Random</span>(<span class='o'>category</span>: <span class='kt'>EUIDCategory</span>) -> <span class='kt'>Euid</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>EUIDCategory</span> {:/} | {::nomarkdown} <span class='o'>category</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### TryParse(string,Euid&)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>TryParse</span>(<span class='o'>value</span>: <span class='kt'>string</span>,<span class='o'>result</span>: <span class='kt'>Euid&</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Euid&</span> {:/} | {::nomarkdown} <span class='o'>result</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

