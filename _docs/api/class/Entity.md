---
title: Entity
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
            
Visual representation of a EntityData

## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>_prefabId</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ThirdPersonCamera__instance</span> {:/} | {::nomarkdown} <span class='o'>Camera</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>AnimationTree__instance</span> {:/} | {::nomarkdown} <span class='o'>AnimationTree</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Skeleton3D__instance</span> {:/} | {::nomarkdown} <span class='o'>Skeleton</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>PackedScene__instance</span> {:/} | {::nomarkdown} <span class='o'>Ragdoll</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>WalkSpeed</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>RunSpeed</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>RotationSpeed</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>JumpVelocity</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>DashPower</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Weight</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>Disable</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Dictionary__ItemData__instance__number__instance</span> {:/} | {::nomarkdown} <span class='o'>Inventory</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Inventory is all items that the entity owns</span> {:/} |
| {::nomarkdown} <span class='kt'>Array__ItemData__instance__instance</span> {:/} | {::nomarkdown} <span class='o'>Equipment</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Inventory is all items that the entity has equipped</span> {:/} |
| {::nomarkdown} <span class='kt'>SkillSaveData[]__instance</span> {:/} | {::nomarkdown} <span class='o'>Knowledge</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Contains information about the each skill that the entity knows about</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>TickRate</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Gravity</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3__instance</span> {:/} | {::nomarkdown} <span class='o'>HorizontalVelocity</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>AnimationNodeStateMachinePlayback__instance</span> {:/} | {::nomarkdown} <span class='o'>Animator</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>WaterDepth</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Vector3__instance__instance</span> {:/} | {::nomarkdown} <span class='o'>Destination</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The current desired destination where the Entity wants to move towards.</span> {:/} |
| {::nomarkdown} <span class='kt'>Array__Attack__instance__instance</span> {:/} | {::nomarkdown} <span class='o'>Attacks</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>State__instance</span> {:/} | {::nomarkdown} <span class='o'>CurrentState</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>State[]__instance</span> {:/} | {::nomarkdown} <span class='o'>ConfiguredStates</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Memory__instance</span> {:/} | {::nomarkdown} <span class='o'>Memory</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>List of events that this entity remembers</span> {:/} |
| {::nomarkdown} <span class='kt'>Event__Entity__instance__instance</span> {:/} | {::nomarkdown} <span class='o'>OnKilled</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Event__instance</span> {:/} | {::nomarkdown} <span class='o'>OnExperienceGained</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## ReadOnly
{:.readonly}

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>IsDead</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>IsInWater</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>IsSwimming</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>JogSpeed</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>LevelNode</span> {:/} | {::nomarkdown} <span class='nf'>Level</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>WorldOffset</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>WorldPosition</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Properties
{:.property}

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='nf'>get_CurrentTask</span>() {:/} | {::nomarkdown} <span class='nf'>set_CurrentTask</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Detail</span> {:/} | {::nomarkdown} <span class='nf'>get_Detail</span>() {:/} | {::nomarkdown} <span class='nf'>set_Detail</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Group</span> {:/} | {::nomarkdown} <span class='nf'>get_Group</span>() {:/} | {::nomarkdown} <span class='nf'>set_Group</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_Health</span>() {:/} | {::nomarkdown} <span class='nf'>set_Health</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The current health of the entity</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_HealthLimit</span>() {:/} | {::nomarkdown} <span class='nf'>set_HealthLimit</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Max health the entity can have</span> {:/} |
| {::nomarkdown} <span class='kt'>Euid</span> {:/} | {::nomarkdown} <span class='nf'>get_Id</span>() {:/} | {::nomarkdown} <span class='nf'>set_Id</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The ID of the entity</span> {:/} |
| {::nomarkdown} <span class='kt'>Euid</span> {:/} | {::nomarkdown} <span class='nf'>get_LevelId</span>() {:/} | {::nomarkdown} <span class='nf'>set_LevelId</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>get_LevelPosition</span>() {:/} | {::nomarkdown} <span class='nf'>set_LevelPosition</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Euid</span> {:/} | {::nomarkdown} <span class='nf'>get_PrefabId</span>() {:/} | {::nomarkdown} <span class='nf'>set_PrefabId</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>List__ScheduleTask</span> {:/} | {::nomarkdown} <span class='nf'>get_Tasks</span>() {:/} | {::nomarkdown} <span class='nf'>set_Tasks</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Tasks work on a priority order. Tasks at the TOP of the list must be completed first.</span> {:/} |
{:class="table table-bordered highlight"}

## Functions
{:.function}

*Requires an instance!*
{: .notice--warning}

### GetScheduledTask
> Returns the next Task from the Schedule of this Entity. Yet before this task can be done, any current Tasks must be completed first.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetScheduledTask</span>() -> <span class='kt'>ScheduleTask</span>
</pre>
</div>
</div>

### InterruptCurrentTask(ScheduleTask)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>InterruptCurrentTask</span>(<span class='o'>newTask</span>: <span class='kt'>ScheduleTask</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>newTask</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### FinishCurrentTask
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>FinishCurrentTask</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### OnEvaluatePackage(EriosDateTime)
> Packages are to be evaluated every hour, or when a package is completed.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>OnEvaluatePackage</span>(<span class='o'>time</span>: <span class='kt'>EriosDateTime</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>EriosDateTime</span> {:/} | {::nomarkdown} <span class='o'>time</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### TryCreateGroup(Entity)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>TryCreateGroup</span>(<span class='o'>requester</span>: <span class='kt'>Entity</span>) -> <span class='kt'>Group</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Entity</span> {:/} | {::nomarkdown} <span class='o'>requester</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetSpeedModifier
> Calculates the speed modifier. Depending on the equipment being worn, terrain and more
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetSpeedModifier</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### Damage(WeaponItem)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Damage</span>(<span class='o'>source</span>: <span class='kt'>WeaponItem</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>WeaponItem</span> {:/} | {::nomarkdown} <span class='o'>source</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Damage(Item)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Damage</span>(<span class='o'>source</span>: <span class='kt'>Item</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Item</span> {:/} | {::nomarkdown} <span class='o'>source</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Damage(number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Damage</span>(<span class='o'>amount</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>amount</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _OnDetailChanged(Detail)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_OnDetailChanged</span>(<span class='o'>detail</span>: <span class='kt'>Detail</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Detail</span> {:/} | {::nomarkdown} <span class='o'>detail</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _OnEntityHit(Entity,DamageCollider)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_OnEntityHit</span>(<span class='o'>target</span>: <span class='kt'>Entity</span>,<span class='o'>source</span>: <span class='kt'>DamageCollider</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Entity</span> {:/} | {::nomarkdown} <span class='o'>target</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>DamageCollider</span> {:/} | {::nomarkdown} <span class='o'>source</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Equip(ItemData,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Equip</span>(<span class='o'>item</span>: <span class='kt'>ItemData</span>,<span class='o'>count</span>: <span class='kt'>number</span> = 1) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ItemData</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>count</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### UnEquip(ItemData)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>UnEquip</span>(<span class='o'>item</span>: <span class='kt'>ItemData</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ItemData</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AddItem(ItemData,number)
> Adds the item to the
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddItem</span>(<span class='o'>item</span>: <span class='kt'>ItemData</span>,<span class='o'>count</span>: <span class='kt'>number</span> = 1) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ItemData</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>count</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveItem(Euid,number)
> Removes the item to the
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveItem</span>(<span class='o'>itemId</span>: <span class='kt'>Euid</span>,<span class='o'>count</span>: <span class='kt'>number</span> = 1) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Euid</span> {:/} | {::nomarkdown} <span class='o'>itemId</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>count</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveItem(ItemData,number)
> Removes the item to the
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveItem</span>(<span class='o'>item</span>: <span class='kt'>ItemData</span>,<span class='o'>count</span>: <span class='kt'>number</span> = 1) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ItemData</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>count</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasItem(Euid,number)
> Checks if the entity has an item with a specific ID and count in the inventory.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasItem</span>(<span class='o'>id</span>: <span class='kt'>Euid</span>,<span class='o'>count</span>: <span class='kt'>number</span> = 1) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Euid</span> {:/} | {::nomarkdown} <span class='o'>id</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>count</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsEquipped(Euid)
> Checks if the entity has equipped a specific item
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsEquipped</span>(<span class='o'>id</span>: <span class='kt'>Euid</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Euid</span> {:/} | {::nomarkdown} <span class='o'>id</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveEquipped(Euid)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveEquipped</span>(<span class='o'>id</span>: <span class='kt'>Euid</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Euid</span> {:/} | {::nomarkdown} <span class='o'>id</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _Init(EntityPrefab)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_Init</span>(<span class='o'>prefab</span>: <span class='kt'>EntityPrefab</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>EntityPrefab</span> {:/} | {::nomarkdown} <span class='o'>prefab</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _Init(CreaturePrefab,boolean)
> Invoked by spawners before _Ready is called
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_Init</span>(<span class='o'>prefab</span>: <span class='kt'>CreaturePrefab</span>,<span class='o'>randomize</span>: <span class='kt'>boolean</span> = True) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>CreaturePrefab</span> {:/} | {::nomarkdown} <span class='o'>prefab</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>randomize</span> {:/} | {::nomarkdown} <span class='c'>When true, appearance will be randomized</span> {:/} |
{:class="table table-bordered highlight"}

### State
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>State</span>() -> <span class='kt'>T</span>
</pre>
</div>
</div>

### Change(State)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Change</span>(<span class='o'>state</span>: <span class='kt'>State</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>State</span> {:/} | {::nomarkdown} <span class='o'>state</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _OnTick(number)
> The amount of expired ticks. Can be greater than 1 if the entity is going a lower detail level
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_OnTick</span>(<span class='o'>tickDelta</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>tickDelta</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Save
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Save</span>() -> <span class='kt'>EntityData</span>
</pre>
</div>
</div>

### Save(EntityData)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Save</span>(<span class='o'>data</span>: <span class='kt'>EntityData</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>EntityData</span> {:/} | {::nomarkdown} <span class='o'>data</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Load(EntityData)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Load</span>(<span class='o'>data</span>: <span class='kt'>EntityData</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>EntityData</span> {:/} | {::nomarkdown} <span class='o'>data</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AddExperience(SkillData,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddExperience</span>(<span class='o'>skill</span>: <span class='kt'>SkillData</span>,<span class='o'>amount</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>SkillData</span> {:/} | {::nomarkdown} <span class='o'>skill</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>amount</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetKnowledge
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetKnowledge</span>() -> <span class='kt'>T</span>
</pre>
</div>
</div>

### TryGetKnowledge(T&)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>TryGetKnowledge</span>(<span class='o'>knowledge</span>: <span class='kt'>T&</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>T&</span> {:/} | {::nomarkdown} <span class='o'>knowledge</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Alternate
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Alternate</span>() -> <span class='kt'>IEntity</span>
</pre>
</div>
</div>

### OnTaskUpdate
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>OnTaskUpdate</span>() -> <span class='kt'>Task</span>
</pre>
</div>
</div>

## Static Functions
*Do not require an instance!*
{: .notice--warning}

### Spawn(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Spawn</span>(<span class='o'>id</span>: <span class='kt'>string</span>) -> <span class='kt'>Entity</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>id</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

