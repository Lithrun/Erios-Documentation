---
# This file was automatically generated on 2025-03-22 by the Lunaris Documentation Generator
title: DynamicList__Translation
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

## Methods
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

## Static Methods
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

