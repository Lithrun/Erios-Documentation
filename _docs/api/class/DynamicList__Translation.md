---
title: DynamicList__Translation
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
            
A DynamicList which gets seeded with customizable data. Call  to revert it back to the default state

## Constructors
{:.constructor}

### DynamicList__Translation.__new(IEnumerable__Translation,fun(arg: Translation[]))
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DynamicList__Translation.__new</span>(<span class='o'>original</span>: <span class='kt'>IEnumerable__Translation</span>,<span class='o'>onRestoredCallback</span>: <span class='kt'>fun(arg: Translation[])</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>IEnumerable__Translation</span> {:/} | {::nomarkdown} <span class='o'>original</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>fun(arg: Translation[])</span> {:/} | {::nomarkdown} <span class='o'>onRestoredCallback</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## ReadOnly
{:.readonly}

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>Count</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Properties
{:.property}

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>Translation</span> {:/} | {::nomarkdown} <span class='nf'>get_Item</span>() {:/} | {::nomarkdown} <span class='nf'>set_Item</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions
{:.function}

*Requires an instance!*
{: .notice--warning}

### Restore
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Restore</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Add(Translation)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Add</span>(<span class='o'>item</span>: <span class='kt'>Translation</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Translation</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Select(Func__Translation__TResult)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Select</span>(<span class='o'>predicate</span>: <span class='kt'>Func__Translation__TResult</span>) -> <span class='kt'>IEnumerable__TResult</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Func__Translation__TResult</span> {:/} | {::nomarkdown} <span class='o'>predicate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SelectMany(Func__Translation__IEnumerable__TResult)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SelectMany</span>(<span class='o'>predicate</span>: <span class='kt'>Func__Translation__IEnumerable__TResult</span>) -> <span class='kt'>IEnumerable__TResult</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Func__Translation__IEnumerable__TResult</span> {:/} | {::nomarkdown} <span class='o'>predicate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Where(Func__Translation__boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Where</span>(<span class='o'>predicate</span>: <span class='kt'>Func__Translation__boolean</span>) -> <span class='kt'>IEnumerable__Translation</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Func__Translation__boolean</span> {:/} | {::nomarkdown} <span class='o'>predicate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### FirstOrDefault(Func__Translation__boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>FirstOrDefault</span>(<span class='o'>predicate</span>: <span class='kt'>Func__Translation__boolean</span>) -> <span class='kt'>Translation</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Func__Translation__boolean</span> {:/} | {::nomarkdown} <span class='o'>predicate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### ToArray
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ToArray</span>() -> <span class='kt'>Translation[]</span>
</pre>
</div>
</div>

### Cast
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Cast</span>() -> <span class='kt'>IEnumerable__TTarget</span>
</pre>
</div>
</div>

### GetEnumerator
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetEnumerator</span>() -> <span class='kt'>IEnumerator__Translation</span>
</pre>
</div>
</div>

## Static Functions
*Do not require an instance!*
{: .notice--warning}

### Empty(fun(arg: Translation[]))
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Empty</span>(<span class='o'>onRestoredCallback</span>: <span class='kt'>fun(arg: Translation[])</span>) -> <span class='kt'>DynamicList__Translation</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>fun(arg: Translation[])</span> {:/} | {::nomarkdown} <span class='o'>onRestoredCallback</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

