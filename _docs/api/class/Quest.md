---
title: Quest
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

### Quest.__new()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Quest.__new</span>()
</pre>
</div>
</div>

## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>Notes</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## ReadOnly
{:.readonly}

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>IsComplete</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>QuestStage</span> {:/} | {::nomarkdown} <span class='nf'>Stage</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Properties
{:.property}

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_CurrentStage</span>() {:/} | {::nomarkdown} <span class='nf'>set_CurrentStage</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_IsActiveOnGameStart</span>() {:/} | {::nomarkdown} <span class='nf'>set_IsActiveOnGameStart</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>LocalizedString</span> {:/} | {::nomarkdown} <span class='nf'>get_Name</span>() {:/} | {::nomarkdown} <span class='nf'>set_Name</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_Priority</span>() {:/} | {::nomarkdown} <span class='nf'>set_Priority</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_Script</span>() {:/} | {::nomarkdown} <span class='nf'>set_Script</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>A quest script is ran whenever a quest is activated. It will also be called every 10 seconds.</span> {:/} |
| {::nomarkdown} <span class='kt'>Array__QuestStage</span> {:/} | {::nomarkdown} <span class='nf'>get_Stages</span>() {:/} | {::nomarkdown} <span class='nf'>set_Stages</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Array__ScheduleTask</span> {:/} | {::nomarkdown} <span class='nf'>get_Tasks</span>() {:/} | {::nomarkdown} <span class='nf'>set_Tasks</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Array__QuestTopic</span> {:/} | {::nomarkdown} <span class='nf'>get_Topics</span>() {:/} | {::nomarkdown} <span class='nf'>set_Topics</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions
{:.function}

*Requires an instance!*
{: .notice--warning}

### WasStageCompleted(number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>WasStageCompleted</span>(<span class='o'>stage</span>: <span class='kt'>number</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>stage</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetTopics(Entity,Entity)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTopics</span>(<span class='o'>self</span>: <span class='kt'>Entity</span>,<span class='o'>target</span>: <span class='kt'>Entity</span>) -> <span class='kt'>Topic[]</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Entity</span> {:/} | {::nomarkdown} <span class='o'>self</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Entity</span> {:/} | {::nomarkdown} <span class='o'>target</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetCompletedStages
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetCompletedStages</span>() -> <span class='kt'>QuestStage[]</span>
</pre>
</div>
</div>

### GetComments(Topic)
> Gets a list of comments for a specific topic. These are not Lunaris evaluated yet
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetComments</span>(<span class='o'>topic</span>: <span class='kt'>Topic</span>) -> <span class='kt'>Comment[]</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Topic</span> {:/} | {::nomarkdown} <span class='o'>topic</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Save
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Save</span>() -> <span class='kt'>QuestSaveData</span>
</pre>
</div>
</div>

### Load(QuestSaveData)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Load</span>(<span class='o'>data</span>: <span class='kt'>QuestSaveData</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>QuestSaveData</span> {:/} | {::nomarkdown} <span class='o'>data</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

