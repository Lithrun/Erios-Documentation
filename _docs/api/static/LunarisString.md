---
# This file was automatically generated on 2025-03-26 by the Lunaris Documentation Generator
title: LunarisString
categories: [docs]
toc: true
badge: Static
badge_color: '#FFA500'
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
            


## Constants
*The value of a constant cannot be changed*
{: .notice--warning}

| Type | Name | Value | Description
| --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>NewLine</span> {:/} | {::nomarkdown} <span class='s'>'
'</span> {:/} | {::nomarkdown} <span class='c'>Represents the NewLine character (\n)</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>Empty</span> {:/} | {::nomarkdown} <span class='s'>''</span> {:/} | {::nomarkdown} <span class='c'>Represents the empty string ("").</span> {:/} |
{:class="table table-bordered highlight"}

## Functions

### IsNilOrEmpty(string)
> Indicates whether the specified string is nil or an empty string ("").
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsNilOrEmpty</span>(<span class='o'>str</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Concat(string,string)
> Concatenates two specified instances of string.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Concat</span>(<span class='o'>str1</span>: <span class='kt'>string</span>,<span class='o'>str2</span>: <span class='kt'>string</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str1</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str2</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Contains(string,string)
> Returns a value indicating whether a specified substring occurs within this string.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Contains</span>(<span class='o'>str</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IndexOf(string,string)
> Reports the zero-based index of the first occurrence of the specified string in this instance.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IndexOf</span>(<span class='o'>str</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>string</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Replace(string,string,string)
> Returns a new string in which all occurrences of a specified string in the current instance are replaced with another specified string.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Replace</span>(<span class='o'>str</span>: <span class='kt'>string</span>,<span class='o'>oldValue</span>: <span class='kt'>string</span>,<span class='o'>newValue</span>: <span class='kt'>string</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>oldValue</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>newValue</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Trim(string)
> Returns a new string that trims all leading and trailing white-space characters from the current string.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Trim</span>(<span class='o'>str</span>: <span class='kt'>string</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### ToUpper(string)
> Converts the specified string to uppercase.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ToUpper</span>(<span class='o'>str</span>: <span class='kt'>string</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### ToLower(string)
> Converts the specified string to lowercase.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ToLower</span>(<span class='o'>str</span>: <span class='kt'>string</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Split(string,Char)
> Splits a string into substrings based on the specified delimiter.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Split</span>(<span class='o'>str</span>: <span class='kt'>string</span>,<span class='o'>delimiter</span>: <span class='kt'>Char</span>) -> <span class='kt'>String[]</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Char</span> {:/} | {::nomarkdown} <span class='o'>delimiter</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### StartsWith(string,string)
> Determines whether the beginning of this string instance matches the specified string.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>StartsWith</span>(<span class='o'>str</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### EndsWith(string,string)
> Determines whether the end of this string instance matches the specified string.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>EndsWith</span>(<span class='o'>str</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Trim(string,Char[])
> Removes all leading and trailing occurrences of a set of characters specified in an array from the current string.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Trim</span>(<span class='o'>str</span>: <span class='kt'>string</span>,<span class='o'>trimChars</span>: <span class='kt'>Char[]</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>str</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Char[]</span> {:/} | {::nomarkdown} <span class='o'>trimChars</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

