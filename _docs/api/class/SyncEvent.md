---
# This file was automatically generated on 2025-05-28 by the Lunaris Documentation Generator
title: SyncEvent
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
            
Thread-safe events

## Constructors
### SyncEvent.__new()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SyncEvent.__new</span>()
</pre>
</div>
</div>

## Functions
*Requires an instance!*
{: .notice--warning}

### Invoke
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Invoke</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### AddEventHandler(Action)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddEventHandler</span>(<span class='o'>action</span>: <span class='kt'>Action</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Action</span> {:/} | {::nomarkdown} <span class='o'>action</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveEventHandler(Action)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveEventHandler</span>(<span class='o'>action</span>: <span class='kt'>Action</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Action</span> {:/} | {::nomarkdown} <span class='o'>action</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

