---
# This file was automatically generated on 2025-03-26 by the Lunaris Documentation Generator
title: Dictionary__ItemData__number
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
            
Typed wrapper around Godot's Dictionary class, a dictionary of Variant
            typed elements allocated in the engine in C++. Useful when
            interfacing with the engine. Otherwise prefer .NET collections
            such as .

## Constructors
### Dictionary__ItemData__number.__new()
> Constructs a new empty .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Dictionary__ItemData__number.__new</span>()
</pre>
</div>
</div>

### Dictionary__ItemData__number.__new(IDictionary__ItemData__number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Dictionary__ItemData__number.__new</span>(<span class='o'>dictionary</span>: <span class='kt'>IDictionary__ItemData__number</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>IDictionary__ItemData__number</span> {:/} | {::nomarkdown} <span class='o'>dictionary</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Dictionary__ItemData__number.__new(Dictionary)
> Constructs a new from the given dictionary's elements.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Dictionary__ItemData__number.__new</span>(<span class='o'>dictionary</span>: <span class='kt'>Dictionary</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Dictionary</span> {:/} | {::nomarkdown} <span class='o'>dictionary</span> {:/} | {::nomarkdown} <span class='c'>The dictionary to construct from.</span> {:/} |
{:class="table table-bordered highlight"}

## ReadOnly

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>Count</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Returns the number of elements in this . This is also known as the size or length of the dictionary.</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>IsReadOnly</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Returns if the dictionary is read-only. See .</span> {:/} |
| {::nomarkdown} <span class='kt'>ICollection__ItemData</span> {:/} | {::nomarkdown} <span class='nf'>Keys</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Gets the collection of keys in this .</span> {:/} |
| {::nomarkdown} <span class='kt'>ICollection__number</span> {:/} | {::nomarkdown} <span class='nf'>Values</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Gets the collection of elements in this .</span> {:/} |
{:class="table table-bordered highlight"}

## Properties

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_Item</span>() {:/} | {::nomarkdown} <span class='nf'>set_Item</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions
*Requires an instance!*
{: .notice--warning}

### Duplicate(boolean)
> Returns a copy of the . If is , a deep copy is performed: all nested arrays and dictionaries are duplicated and will not be shared with the original dictionary. If , a shallow copy is made and references to the original nested arrays and dictionaries are kept, so that modifying a sub-array or dictionary in the copy will also impact those referenced in the source dictionary. Note that any derived elements will be shallow copied regardless of the setting.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Duplicate</span>(<span class='o'>deep</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>Dictionary__ItemData__number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>deep</span> {:/} | {::nomarkdown} <span class='c'>If , performs a deep copy.</span> {:/} |
{:class="table table-bordered highlight"}

### Merge(Dictionary__ItemData__number,boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Merge</span>(<span class='o'>dictionary</span>: <span class='kt'>Dictionary__ItemData__number</span>,<span class='o'>overwrite</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Dictionary__ItemData__number</span> {:/} | {::nomarkdown} <span class='o'>dictionary</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>overwrite</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RecursiveEqual(Dictionary__ItemData__number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RecursiveEqual</span>(<span class='o'>other</span>: <span class='kt'>Dictionary__ItemData__number</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Dictionary__ItemData__number</span> {:/} | {::nomarkdown} <span class='o'>other</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Add(ItemData,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Add</span>(<span class='o'>key</span>: <span class='kt'>ItemData</span>,<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ItemData</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### ContainsKey(ItemData)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ContainsKey</span>(<span class='o'>key</span>: <span class='kt'>ItemData</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ItemData</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Remove(ItemData)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Remove</span>(<span class='o'>key</span>: <span class='kt'>ItemData</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ItemData</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### TryGetValue(ItemData,Int32&)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>TryGetValue</span>(<span class='o'>key</span>: <span class='kt'>ItemData</span>,<span class='o'>value</span>: <span class='kt'>Int32&</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ItemData</span> {:/} | {::nomarkdown} <span class='o'>key</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Int32&</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### MakeReadOnly
> Makes the read-only, i.e. disabled modying of the dictionary's elements. Does not apply to nested content, e.g. content of nested dictionaries.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>MakeReadOnly</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Clear
> Clears the dictionary, removing all entries from it.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Clear</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### GetEnumerator
> Gets an enumerator for this .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetEnumerator</span>() -> <span class='kt'>IEnumerator__KeyValuePair__ItemData__number</span>
</pre>
</div>
</div>

### ToString
> Converts this to a string.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ToString</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

