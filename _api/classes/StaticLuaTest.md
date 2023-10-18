---
title: 
            StaticLuaTest
permalink: /api/staticluatest
search: true
categories: [api, enum]
toc: true
---
            
**STATIC CLASS: **A single instance is shared throughout the game
{: .notice--warning}


## Constants
*The value of a constant cannot be changed*
{: .notice--warning}

| Type | Name | Value | Description
| --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>FieldWithReadonly</span> {:/} | {::nomarkdown} <span class='s'>'Field with readonly as default'</span> {:/} | {::nomarkdown} <span class='c'>Yes it also has documentation</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>STRING_CONST</span> {:/} | {::nomarkdown} <span class='s'>'Something'</span> {:/} | {::nomarkdown} <span class='c'>An actual string constant</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>INT_CONST</span> {:/} | {::nomarkdown} <span class='m'>124</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>DOUBLE_CONST</span> {:/} | {::nomarkdown} <span class='m'>125.214</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Fields

| Type | Name | Default | Description |
| --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Field</span> {:/} | {::nomarkdown} <span class='m'>0</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>FieldWithDefault</span> {:/} | {::nomarkdown} <span class='m'>500</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Properties

| Type | Getter | Setter | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_Property</span>() {:/} | {::nomarkdown} <span class='nf'>set_Property</span>(<span class='o'>val</span>) {:/} | {::nomarkdown} <span class='m'>0</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_PropertyWithDefault</span>() {:/} | {::nomarkdown} <span class='nf'>set_PropertyWithDefault</span>(<span class='o'>val</span>) {:/} | {::nomarkdown} <span class='m'>25</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_PropertyWithoutSetter</span>() {:/} | {::nomarkdown} <i class ='fas fa-times'></i> {:/} | {::nomarkdown} <span class='m'>75</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_PropertyWithPrivateSetter</span>() {:/} | {::nomarkdown} <i class ='fas fa-times'></i> {:/} | {::nomarkdown} <span class='m'>69</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_PropertyWithStringDefault</span>() {:/} | {::nomarkdown} <span class='nf'>set_PropertyWithStringDefault</span>(<span class='o'>val</span>) {:/} | {::nomarkdown} <span class='s'>'Hello World'</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Methods
*Requires an instance!*
{: .notice--warning}

### ObsoleteStaticMethod
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ObsoleteStaticMethod</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

<span class="c">Parameters</span>

### VoidMethod
> Static method
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>VoidMethod</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

<span class="c">Parameters</span>

### VoidMethod(string)
> Static method with parameter
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>VoidMethod</span>(<span class='o'>param1</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

<span class="c">Parameters</span>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>param1</span> {:/} | {::nomarkdown} <span class='c'>A cool parameter</span> {:/} |
{:class="table table-bordered highlight"}

### VoidMethod(string,number,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>VoidMethod</span>(<span class='o'>param1</span>: <span class='kt'>string</span>,<span class='o'>param2</span>: <span class='kt'>number</span>,<span class='o'>param3</span>: <span class='kt'>number</span> = 25) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

<span class="c">Parameters</span>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>param1</span> {:/} | {::nomarkdown} <span class='c'>First parameter</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>param2</span> {:/} | {::nomarkdown} <span class='c'>Second parameter</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>param3</span> {:/} | {::nomarkdown} <span class='c'>Third parameter with a default</span> {:/} |
{:class="table table-bordered highlight"}

