---
title: Humanoid
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
            
Humanoid entities

## Constructors
{:.constructor}

### Humanoid.__new()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Humanoid.__new</span>()
</pre>
</div>
</div>

## Properties
{:.property}

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>CharacterBody</span> {:/} | {::nomarkdown} <span class='nf'>get_Body</span>() {:/} | {::nomarkdown} <span class='nf'>set_Body</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>CharacterData</span> {:/} | {::nomarkdown} <span class='nf'>get_Data</span>() {:/} | {::nomarkdown} <span class='nf'>set_Data</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>DialogueTopic</span> {:/} | {::nomarkdown} <span class='nf'>get_NoTopicAvailableTopic</span>() {:/} | {::nomarkdown} <span class='nf'>set_NoTopicAvailableTopic</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='nf'>get_SkinColor</span>() {:/} | {::nomarkdown} <span class='nf'>set_SkinColor</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Area3D</span> {:/} | {::nomarkdown} <span class='nf'>get_VisionDetection</span>() {:/} | {::nomarkdown} <span class='nf'>set_VisionDetection</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions
{:.function}

*Requires an instance!*
{: .notice--warning}

### Speak(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Speak</span>(<span class='o'>message</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>message</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetAvailableTopics(Entity)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetAvailableTopics</span>(<span class='o'>requestor</span>: <span class='kt'>Entity</span>) -> <span class='kt'>DialogueTopic[]</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Entity</span> {:/} | {::nomarkdown} <span class='o'>requestor</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### TryStartDialogue(Entity,DialogueTopic[]&)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>TryStartDialogue</span>(<span class='o'>requestor</span>: <span class='kt'>Entity</span>,<span class='o'>topics</span>: <span class='kt'>DialogueTopic[]&</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Entity</span> {:/} | {::nomarkdown} <span class='o'>requestor</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>DialogueTopic[]&</span> {:/} | {::nomarkdown} <span class='o'>topics</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### OnSheathWeapon
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>OnSheathWeapon</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### CanInteract(Entity)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CanInteract</span>(<span class='o'>requester</span>: <span class='kt'>Entity</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Entity</span> {:/} | {::nomarkdown} <span class='o'>requester</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetActions(Entity)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetActions</span>(<span class='o'>requester</span>: <span class='kt'>Entity</span>) -> <span class='kt'>List__InteractableAction</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Entity</span> {:/} | {::nomarkdown} <span class='o'>requester</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### ShowOutline(Color)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ShowOutline</span>(<span class='o'>color</span>: <span class='kt'>Color</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HideOutline
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HideOutline</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### OnSpokenTo(Entity,Topic,fun(arg: Comment))
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>OnSpokenTo</span>(<span class='o'>requester</span>: <span class='kt'>Entity</span>,<span class='o'>topic</span>: <span class='kt'>Topic</span>,<span class='o'>onDialogueFinished</span>: <span class='kt'>fun(arg: Comment)</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Entity</span> {:/} | {::nomarkdown} <span class='o'>requester</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Topic</span> {:/} | {::nomarkdown} <span class='o'>topic</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>fun(arg: Comment)</span> {:/} | {::nomarkdown} <span class='o'>onDialogueFinished</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

