---
title: EnumLuaTest
permalink: /api/enumluatest
search: true
categories: [api, enum]
toc: true
---
            
**DEPRECATED** OH NOOOOO
{: .notice--danger}
Enum value test

## Fields

| Value | | Description |
| --- | --- | --- |
| {::nomarkdown}<span class="s">Alpha</span>{:/} | | {::nomarkdown}<span class="c"></span>{:/} |
| {::nomarkdown}<s class="c">Beta</s>{:/} | | {::nomarkdown}<b><i class="gd">Deprecated: </b>Use Alpha or Delta.</i> <s class="c"></s> {:/}
| {::nomarkdown}<span class="s">Delta</span>{:/} | | {::nomarkdown}<span class="c">Prefer using Delta</span>{:/} |
{:class="table table-bordered highlight"}

## Methods
*Requires an instance!*
{: .notice--warning}

### AsNumber(string)
> Documentation stuff or something
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AsNumber</span>(<span class='o'>withDefault</span>: <span class='kt'>string</span> = 'somethings') -> <span class='kt'>number</span>
</pre>
</div>
</div>

<span class="c">Parameters</span>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>withDefault</span> {:/} | {::nomarkdown} <span class='c'>This is a default value</span> {:/} |
{:class="table table-bordered highlight"}

### AsOverride(number)
> Override with an int
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AsOverride</span>(<span class='o'>number</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

<span class="c">Parameters</span>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>number</span> {:/} | {::nomarkdown} <span class='c'>Number is an int here</span> {:/} |
{:class="table table-bordered highlight"}

### AsOverride(string)
> Override with a string
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AsOverride</span>(<span class='o'>number</span>: <span class='kt'>string</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

<span class="c">Parameters</span>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>number</span> {:/} | {::nomarkdown} <span class='c'>Number is a string here</span> {:/} |
{:class="table table-bordered highlight"}

