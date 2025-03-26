---
# This file was automatically generated on 2025-03-26 by the Lunaris Documentation Generator
title: StaticLuaTest
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
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>FieldWithReadonly</span> {:/} | {::nomarkdown} <span class='s'>'Field with readonly as default'</span> {:/} | {::nomarkdown} <span class='c'>Yes it also has documentation</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>STRING_CONST</span> {:/} | {::nomarkdown} <span class='s'>'Something'</span> {:/} | {::nomarkdown} <span class='c'>An actual string constant</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>INT_CONST</span> {:/} | {::nomarkdown} <span class='m'>124</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>DOUBLE_CONST</span> {:/} | {::nomarkdown} <span class='m'>125.214</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Field</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <span class='m'>0</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>FieldWithDefault</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <span class='m'>500</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## ReadOnly

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>PropertyWithoutSetter</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <span class='m'>75</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>PropertyWithPrivateSetter</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <span class='m'>69</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Properties

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_Property</span>() {:/} | {::nomarkdown} <span class='nf'>set_Property</span>(<span class='o'>val</span>) {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <span class='m'>0</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_PropertyWithDefault</span>() {:/} | {::nomarkdown} <span class='nf'>set_PropertyWithDefault</span>(<span class='o'>val</span>) {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <span class='m'>25</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_PropertyWithStringDefault</span>() {:/} | {::nomarkdown} <span class='nf'>set_PropertyWithStringDefault</span>(<span class='o'>val</span>) {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <span class='s'>'Hello World'</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions

### ObsoleteStaticMethod
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ObsoleteStaticMethod</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### VoidMethod
> Static method
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>VoidMethod</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### VoidMethod(string)
> Static method with parameter
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>VoidMethod</span>(<span class='o'>param1</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

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

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>param1</span> {:/} | {::nomarkdown} <span class='c'>First parameter</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>param2</span> {:/} | {::nomarkdown} <span class='c'>Second parameter</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>param3</span> {:/} | {::nomarkdown} <span class='c'>Third parameter with a default</span> {:/} |
{:class="table table-bordered highlight"}

