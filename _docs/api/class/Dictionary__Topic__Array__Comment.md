---
title: Dictionary__Topic__Array__Comment
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

### Dictionary__Topic__Array__Comment.__new()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Dictionary__Topic__Array__Comment.__new</span>()
</pre>
</div>
</div>

### Dictionary__Topic__Array__Comment.__new(IDictionary__Topic__Array__Comment)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Dictionary__Topic__Array__Comment.__new</span>(<span class='o'>dictionary</span>: <span class='kt'>IDictionary__Topic__Array__Comment</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>IDictionary__Topic__Array__Comment</span> {:/} | {::nomarkdown} <span class='o'>dictionary</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Dictionary__Topic__Array__Comment.__new(Dictionary)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Dictionary__Topic__Array__Comment.__new</span>(<span class='o'>dictionary</span>: <span class='kt'>Dictionary</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Dictionary</span> {:/} | {::nomarkdown} <span class='o'>dictionary</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## ReadOnly
{:.readonly}

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>Count</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>IsReadOnly</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ICollection__Topic</span> {:/} | {::nomarkdown} <span class='nf'>Keys</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ICollection__Array__Comment</span> {:/} | {::nomarkdown} <span class='nf'>Values</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Properties
{:.property}

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>Array__Comment</span> {:/} | {::nomarkdown} <span class='nf'>get_Item</span>() {:/} | {::nomarkdown} <span class='nf'>set_Item</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions
{:.function}

*Requires an instance!*
{: .notice--warning}

### Duplicate(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Duplicate</span>(<span class='o'>deep</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>Dictionary__Topic__Array__Comment</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>deep</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Merge(Dictionary__Topic__Array__Comment,boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Merge</span>(<span class='o'>dictionary</span>: <span class='kt'>Dictionary__Topic__Array__Comment</span>,<span class='o'>overwrite</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Dictionary__Topic__Array__Comment</span> {:/} | {::nomarkdown} <span class='o'>dictionary</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>overwrite</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RecursiveEqual(Dictionary__Topic__Array__Comment)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RecursiveEqual</span>(<span class='o'>other</span>: <span class='kt'>Dictionary__Topic__Array__Comment</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Dictionary__Topic__Array__Comment</span> {:/} | {::nomarkdown} <span class='o'>other</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Add(Topic,Array__Comment)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Add</span>(<span class='o'>key</span>: <span class='kt'>Topic</span>,<span class='o'>value</span>: <span class='kt'>Array__Comment</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Topic</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Array__Comment</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### ContainsKey(Topic)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ContainsKey</span>(<span class='o'>key</span>: <span class='kt'>Topic</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Topic</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Remove(Topic)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Remove</span>(<span class='o'>key</span>: <span class='kt'>Topic</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Topic</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### TryGetValue(Topic,Array`1&)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>TryGetValue</span>(<span class='o'>key</span>: <span class='kt'>Topic</span>,<span class='o'>value</span>: <span class='kt'>Array`1&</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Topic</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Array`1&</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### MakeReadOnly
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>MakeReadOnly</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Clear
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Clear</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### GetEnumerator
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetEnumerator</span>() -> <span class='kt'>IEnumerator__KeyValuePair__Topic__Array__Comment</span>
</pre>
</div>
</div>

### ToString
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ToString</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

