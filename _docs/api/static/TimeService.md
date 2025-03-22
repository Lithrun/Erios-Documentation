---
title: TimeService
categories: [docs]
toc: true
previous:
---
            
## Constructors
### TimeService.__new()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>TimeService.__new</span>()
</pre>
</div>
</div>

## Constants
*The value of a constant cannot be changed*
{: .notice--warning}

| Type | Name | Value | Description
| --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>TickFrequency</span> {:/} | {::nomarkdown} <span class='m'>0.1</span> {:/} | {::nomarkdown} <span class='c'>Determines how often a time Tick occurs.</span> {:/} |
{:class="table table-bordered highlight"}

## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>TicksPerSecond</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Determines how many ticks a second requires. Increasing or decreasing this value will speed-up/slow-down time</span> {:/} |
| {::nomarkdown} <span class='kt'>Event__boolean__instance</span> {:/} | {::nomarkdown} <span class='o'>OnPause</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Invoked whenever the game is paused/unpaused</span> {:/} |
| {::nomarkdown} <span class='kt'>Event__number__instance</span> {:/} | {::nomarkdown} <span class='o'>OnSecondPassed</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>OnSecondPassed is called whenever a second has passed</span> {:/} |
| {::nomarkdown} <span class='kt'>Event__number__instance</span> {:/} | {::nomarkdown} <span class='o'>OnTenthOfSecond</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Invoked every 0.1s</span> {:/} |
| {::nomarkdown} <span class='kt'>Event__number__instance</span> {:/} | {::nomarkdown} <span class='o'>OnHourPassed</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>OnHourPassed is called whenever an hour has passed</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>Debug</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>TimeService__instance</span> {:/} | {::nomarkdown} <span class='o'>Instance</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} <Node#139284450189> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Properties

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get__ImportPath</span>() {:/} | {::nomarkdown} <span class='nf'>set__ImportPath</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>AutoTranslateModeEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_AutoTranslateMode</span>() {:/} | {::nomarkdown} <span class='nf'>set_AutoTranslateMode</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Defines if any text should automatically change to its translated version depending on the current locale (for nodes such as , , , etc.). Also decides if the node's strings should be parsed for POT generation.Note: For the root node, auto translate mode can also be set via ProjectSettings.internationalization/rendering/root_node_auto_translate.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_EditorDescription</span>() {:/} | {::nomarkdown} <span class='nf'>set_EditorDescription</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>An optional description to the node. It will be displayed as a tooltip when hovering over the node in the editor's Scene dock.</span> {:/} |
| {::nomarkdown} <span class='kt'>MultiplayerApi</span> {:/} | {::nomarkdown} <span class='nf'>get_Multiplayer</span>() {:/} | {::nomarkdown} <i class ='fas fa-times'></i> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The instance associated with this node. See .Note: Renaming the node, or moving it in the tree, will not move the to the new path, you will have to update this manually.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_Name</span>() {:/} | {::nomarkdown} <span class='nf'>set_Name</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The name of the node. This name must be unique among the siblings (other child nodes from the same parent). When set to an existing sibling's name, the node is automatically renamed.Note: When changing the name, the following characters will be replaced with an underscore: (.:@/"%). In particular, the @ character is reserved for auto-generated names. See also String.validate_node_name.</span> {:/} |
| {::nomarkdown} <span class='kt'>IntPtr</span> {:/} | {::nomarkdown} <span class='nf'>get_NativeInstance</span>() {:/} | {::nomarkdown} <i class ='fas fa-times'></i> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The pointer to the native instance of this .</span> {:/} |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='nf'>get_Owner</span>() {:/} | {::nomarkdown} <span class='nf'>set_Owner</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The owner of this node. The owner must be an ancestor of this node. When packing the owner node in a , all the nodes it owns are also saved with it. See also .Note: In the editor, nodes not owned by the scene root are usually not displayed in the Scene dock, and will not be saved. To prevent this, remember to set the owner after calling .</span> {:/} |
| {::nomarkdown} <span class='kt'>PhysicsInterpolationModeEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_PhysicsInterpolationMode</span>() {:/} | {::nomarkdown} <span class='nf'>set_PhysicsInterpolationMode</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Allows enabling or disabling physics interpolation per node, offering a finer grain of control than turning physics interpolation on and off globally. See ProjectSettings.physics/common/physics_interpolation and for the global setting.Note: When teleporting a node to a distant position you should temporarily disable interpolation with .</span> {:/} |
| {::nomarkdown} <span class='kt'>ProcessModeEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessMode</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessMode</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The node's processing behavior (see ). To check if the node can process in its current mode, use .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessPhysicsPriority</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessPhysicsPriority</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Similar to but for , , or .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessPriority</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessPriority</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The node's execution order of the process callbacks (, , and ). Nodes whose priority value is lower call their process callbacks first, regardless of tree order.</span> {:/} |
| {::nomarkdown} <span class='kt'>ProcessThreadGroupEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessThreadGroup</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessThreadGroup</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Set the process thread group for this node (basically, whether it receives , , or (and the internal versions) on the main thread or in a sub-thread.By default, the thread group is , which means that this node belongs to the same thread group as the parent node. The thread groups means that nodes in a specific thread group will process together, separate to other thread groups (depending on ). If the value is set is , this thread group will occur on a sub thread (not the main thread), otherwise if set to it will process on the main thread. If there is not a parent or grandparent node set to something other than inherit, the node will belong to the default thread group. This default group will process on the main thread and its group order is 0.During processing in a sub-thread, accessing most functions in nodes outside the thread group is forbidden (and it will result in an error in debug mode). Use , , and the likes in order to communicate from the thread groups to the main thread (or to other thread groups).To better understand process thread groups, the idea is that any node set to any other value than will include any child (and grandchild) nodes set to inherit into its process thread group. This means that the processing of all the nodes in the group will happen together, at the same time as the node including them.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessThreadGroupOrder</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessThreadGroupOrder</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Change the process thread group order. Groups with a lesser order will process before groups with a greater order. This is useful when a large amount of nodes process in sub thread and, afterwards, another group wants to collect their result in the main thread, as an example.</span> {:/} |
| {::nomarkdown} <span class='kt'>ProcessThreadMessagesEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessThreadMessages</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessThreadMessages</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Set whether the current thread group will process messages (calls to on threads), and whether it wants to receive them during regular process or physics process callbacks.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_SceneFilePath</span>() {:/} | {::nomarkdown} <span class='nf'>set_SceneFilePath</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The original scene's file path, if the node has been instantiated from a file. Only scene root nodes contains this.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_Ticks</span>() {:/} | {::nomarkdown} <span class='nf'>set_Ticks</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>0.1s is the equivalent to a single tick</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_TotalTicks</span>() {:/} | {::nomarkdown} <i class ='fas fa-times'></i> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_UniqueNameInOwner</span>() {:/} | {::nomarkdown} <span class='nf'>set_UniqueNameInOwner</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>If , the node can be accessed from any node sharing the same or from the itself, with special %Name syntax in .Note: If another node with the same shares the same as this node, the other node will no longer be accessible as unique.</span> {:/} |
{:class="table table-bordered highlight"}

## Methods
*Requires an instance!*
{: .notice--warning}

### _Ready
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_Ready</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Pause
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Pause</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### UnPause
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>UnPause</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### _Process(number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_Process</span>(<span class='o'>delta</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>delta</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Now
> Gets the current time
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Now</span>() -> <span class='kt'>EriosDateTime</span>
</pre>
</div>
</div>

### Save
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Save</span>() -> <span class='kt'>TimeData</span>
</pre>
</div>
</div>

### Load(TimeData)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Load</span>(<span class='o'>data</span>: <span class='kt'>TimeData</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>TimeData</span> {:/} | {::nomarkdown} <span class='o'>data</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetNode(string)
> Fetches a node. The can either be a relative path (from this node), or an absolute path (from the ) to a node. If does not point to a valid node, generates an error and returns . Attempts to access methods on the return value will result in an "Attempt to call <method> on a null instance." error.Note: Fetching by absolute path only works when the node is inside the scene tree (see ).Example: Assume this method is called from the Character node, inside the following tree: ┖╴root ┠╴Character (you are here!) ┃ ┠╴Sword ┃ ┖╴Backpack ┃ ┖╴Dagger ┠╴MyGame ┖╴Swamp ┠╴Alligator ┠╴Mosquito ┖╴Goblin The following calls will return a valid node: GetNode("Sword"); GetNode("Backpack/Dagger"); GetNode("../Swamp/Alligator"); GetNode("/root/MyGame");
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetNode</span>(<span class='o'>path</span>: <span class='kt'>string</span>) -> <span class='kt'>T</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>path</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetNodeOrNull(string)
> Fetches a node by . Similar to , but does not generate an error if does not point to a valid node.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetNodeOrNull</span>(<span class='o'>path</span>: <span class='kt'>string</span>) -> <span class='kt'>T</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>path</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetChild(number,boolean)
> Fetches a child node by its index. Each child node has an index relative its siblings (see ). The first child is at index 0. Negative values can also be used to start from the end of the list. This method can be used in combination with to iterate over this node's children. If no child exists at the given index, this method returns and an error is generated.If is , internal children are ignored (see 's internal parameter). # Assuming the following are children of this node, in order: # First, Middle, Last. var a = get_child(0).name # a is "First" var b = get_child(1).name # b is "Middle" var b = get_child(2).name # b is "Last" var c = get_child(-1).name # c is "Last" Note: To fetch a node by , use .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetChild</span>(<span class='o'>idx</span>: <span class='kt'>number</span>,<span class='o'>includeInternal</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>T</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>idx</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>includeInternal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetChildOrNull(number,boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetChildOrNull</span>(<span class='o'>idx</span>: <span class='kt'>number</span>,<span class='o'>includeInternal</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>T</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>idx</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>includeInternal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetOwner
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetOwner</span>() -> <span class='kt'>T</span>
</pre>
</div>
</div>

### GetOwnerOrNull
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetOwnerOrNull</span>() -> <span class='kt'>T</span>
</pre>
</div>
</div>

### GetParent
> Returns this node's parent node, or if the node doesn't have a parent.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetParent</span>() -> <span class='kt'>T</span>
</pre>
</div>
</div>

### GetParentOrNull
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetParentOrNull</span>() -> <span class='kt'>T</span>
</pre>
</div>
</div>

### _EnterTree
> Called when the node enters the (e.g. upon instantiating, scene changing, or after calling in a script). If the node has children, its callback will be called first, and then that of the children.Corresponds to the notification in .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_EnterTree</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### _ExitTree
> Called when the node is about to leave the (e.g. upon freeing, scene changing, or after calling in a script). If the node has children, its callback will be called last, after all its children have left the tree.Corresponds to the notification in and signal . To get notified when the node has already left the active tree, connect to the .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_ExitTree</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### _GetConfigurationWarnings
> The elements in the array returned from this method are displayed as warnings in the Scene dock if the script that overrides it is a tool script.Returning an empty array produces no warnings.Call when the warnings need to be updated for this node. @export var energy = 0: set(value): energy = value update_configuration_warnings() func _get_configuration_warnings(): if energy < 0: return ["Energy must be 0 or greater."] else: return []
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_GetConfigurationWarnings</span>() -> <span class='kt'>String[]</span>
</pre>
</div>
</div>

### _Input(InputEvent)
> Called when there is an input event. The input event propagates up through the node tree until a node consumes it.It is only called if input processing is enabled, which is done automatically if this method is overridden, and can be toggled with .To consume the input event and stop it propagating further to other nodes, can be called.For gameplay input, and are usually a better fit as they allow the GUI to intercept the events first.Note: This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_Input</span>(<span class='o'>event</span>: <span class='kt'>InputEvent</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>InputEvent</span> {:/} | {::nomarkdown} <span class='o'>event</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _PhysicsProcess(number)
> Called during the physics processing step of the main loop. Physics processing means that the frame rate is synced to the physics, i.e. the parameter will generally be constant (see exceptions below). is in seconds.It is only called if physics processing is enabled, which is done automatically if this method is overridden, and can be toggled with .Processing happens in order of , lower priority values are called first. Nodes with the same priority are processed in tree order, or top to bottom as seen in the editor (also known as pre-order traversal).Corresponds to the notification in .Note: This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).Note: will be larger than expected if running at a framerate lower than / FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both and . As a result, avoid using for time measurements in real-world seconds. Use the singleton's methods for this purpose instead, such as .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_PhysicsProcess</span>(<span class='o'>delta</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>delta</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _ShortcutInput(InputEvent)
> Called when an , , or hasn't been consumed by or any GUI item. It is called before and . The input event propagates up through the node tree until a node consumes it.It is only called if shortcut processing is enabled, which is done automatically if this method is overridden, and can be toggled with .To consume the input event and stop it propagating further to other nodes, can be called.This method can be used to handle shortcuts. For generic GUI events, use instead. Gameplay events should usually be handled with either or .Note: This method is only called if the node is present in the scene tree (i.e. if it's not orphan).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_ShortcutInput</span>(<span class='o'>event</span>: <span class='kt'>InputEvent</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>InputEvent</span> {:/} | {::nomarkdown} <span class='o'>event</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _UnhandledInput(InputEvent)
> Called when an hasn't been consumed by or any GUI item. It is called after and after . The input event propagates up through the node tree until a node consumes it.It is only called if unhandled input processing is enabled, which is done automatically if this method is overridden, and can be toggled with .To consume the input event and stop it propagating further to other nodes, can be called.For gameplay input, this method is usually a better fit than , as GUI events need a higher priority. For keyboard shortcuts, consider using instead, as it is called before this method. Finally, to handle keyboard events, consider using for performance reasons.Note: This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_UnhandledInput</span>(<span class='o'>event</span>: <span class='kt'>InputEvent</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>InputEvent</span> {:/} | {::nomarkdown} <span class='o'>event</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _UnhandledKeyInput(InputEvent)
> Called when an hasn't been consumed by or any GUI item. It is called after but before . The input event propagates up through the node tree until a node consumes it.It is only called if unhandled key input processing is enabled, which is done automatically if this method is overridden, and can be toggled with .To consume the input event and stop it propagating further to other nodes, can be called.This method can be used to handle Unicode character input with Alt, Alt + Ctrl, and Alt + Shift modifiers, after shortcuts were handled.For gameplay input, this and are usually a better fit than , as GUI events should be handled first. This method also performs better than , since unrelated events such as are automatically filtered. For shortcuts, consider using instead.Note: This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_UnhandledKeyInput</span>(<span class='o'>event</span>: <span class='kt'>InputEvent</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>InputEvent</span> {:/} | {::nomarkdown} <span class='o'>event</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AddSibling(Node,boolean)
> Adds a node to this node's parent, and moves the added sibling right below this node.If is , improves the readability of the added . If not named, the is renamed to its type, and if it shares with a sibling, a number is suffixed more appropriately. This operation is very slow. As such, it is recommended leaving this to , which assigns a dummy name featuring @ in both situations.Use instead of this method if you don't need the child node to be added below a specific node in the list of children.Note: If this node is internal, the added sibling will be internal too (see 's internal parameter).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddSibling</span>(<span class='o'>sibling</span>: <span class='kt'>Node</span>,<span class='o'>forceReadableName</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>sibling</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>forceReadableName</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetName(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetName</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetName
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetName</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### AddChild(Node,boolean,InternalMode)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddChild</span>(<span class='o'>node</span>: <span class='kt'>Node</span>,<span class='o'>forceReadableName</span>: <span class='kt'>boolean</span> = False,<span class='o'>internal</span>: <span class='kt'>InternalMode</span> = Disabled) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>node</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>forceReadableName</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>InternalMode</span> {:/} | {::nomarkdown} <span class='o'>internal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveChild(Node)
> Removes a child . The , along with its children, are not deleted. To delete a node, see .Note: When this node is inside the tree, this method sets the of the removed (or its descendants) to , if their is no longer an ancestor (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveChild</span>(<span class='o'>node</span>: <span class='kt'>Node</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>node</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Reparent(Node,boolean)
> Changes the parent of this to the . The node needs to already have a parent. The node's is preserved if its owner is still reachable from the new location (i.e., the node is still a descendant of the new parent after the operation).If is , the node's global transform will be preserved if supported. , and support this argument (but keeps only position).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Reparent</span>(<span class='o'>newParent</span>: <span class='kt'>Node</span>,<span class='o'>keepGlobalTransform</span>: <span class='kt'>boolean</span> = True) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>newParent</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>keepGlobalTransform</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetChildCount(boolean)
> Returns the number of children of this node.If is , internal children are not counted (see 's internal parameter).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetChildCount</span>(<span class='o'>includeInternal</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>includeInternal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetChildren(boolean)
> Returns all children of this node inside an .If is , excludes internal children from the returned array (see 's internal parameter).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetChildren</span>(<span class='o'>includeInternal</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>Array__Node</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>includeInternal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetChild(number,boolean)
> Fetches a child node by its index. Each child node has an index relative its siblings (see ). The first child is at index 0. Negative values can also be used to start from the end of the list. This method can be used in combination with to iterate over this node's children. If no child exists at the given index, this method returns and an error is generated.If is , internal children are ignored (see 's internal parameter). # Assuming the following are children of this node, in order: # First, Middle, Last. var a = get_child(0).name # a is "First" var b = get_child(1).name # b is "Middle" var b = get_child(2).name # b is "Last" var c = get_child(-1).name # c is "Last" Note: To fetch a node by , use .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetChild</span>(<span class='o'>idx</span>: <span class='kt'>number</span>,<span class='o'>includeInternal</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>Node</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>idx</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>includeInternal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasNode(string)
> Returns if the points to a valid node. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasNode</span>(<span class='o'>path</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>path</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetNode(string)
> Fetches a node. The can either be a relative path (from this node), or an absolute path (from the ) to a node. If does not point to a valid node, generates an error and returns . Attempts to access methods on the return value will result in an "Attempt to call <method> on a null instance." error.Note: Fetching by absolute path only works when the node is inside the scene tree (see ).Example: Assume this method is called from the Character node, inside the following tree: ┖╴root ┠╴Character (you are here!) ┃ ┠╴Sword ┃ ┖╴Backpack ┃ ┖╴Dagger ┠╴MyGame ┖╴Swamp ┠╴Alligator ┠╴Mosquito ┖╴Goblin The following calls will return a valid node: GetNode("Sword"); GetNode("Backpack/Dagger"); GetNode("../Swamp/Alligator"); GetNode("/root/MyGame");
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetNode</span>(<span class='o'>path</span>: <span class='kt'>string</span>) -> <span class='kt'>Node</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>path</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetNodeOrNull(string)
> Fetches a node by . Similar to , but does not generate an error if does not point to a valid node.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetNodeOrNull</span>(<span class='o'>path</span>: <span class='kt'>string</span>) -> <span class='kt'>Node</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>path</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetParent
> Returns this node's parent node, or if the node doesn't have a parent.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetParent</span>() -> <span class='kt'>Node</span>
</pre>
</div>
</div>

### FindChild(string,boolean,boolean)
> Finds the first descendant of this node whose matches , returning if no match is found. The matching is done against node names, not their paths, through String.match. As such, it is case-sensitive, "*" matches zero or more characters, and "?" matches any single character.If is , only this node's direct children are checked. Nodes are checked in tree order, so this node's first direct child is checked first, then its own direct children, etc., before moving to the second direct child, and so on. Internal children are also included in the search (see internal parameter in ).If is , only descendants with a valid node are checked.Note: This method can be very slow. Consider storing a reference to the found node in a variable. Alternatively, use with unique names (see ).Note: To find all descendant nodes matching a pattern or a class type, see .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>FindChild</span>(<span class='o'>pattern</span>: <span class='kt'>string</span>,<span class='o'>recursive</span>: <span class='kt'>boolean</span> = True,<span class='o'>owned</span>: <span class='kt'>boolean</span> = True) -> <span class='kt'>Node</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>pattern</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>recursive</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>owned</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### FindChildren(string,string,boolean,boolean)
> Finds all descendants of this node whose names match , returning an empty if no match is found. The matching is done against node names, not their paths, through String.match. As such, it is case-sensitive, "*" matches zero or more characters, and "?" matches any single character.If is not empty, only ancestors inheriting from are included (see ).If is , only this node's direct children are checked. Nodes are checked in tree order, so this node's first direct child is checked first, then its own direct children, etc., before moving to the second direct child, and so on. Internal children are also included in the search (see internal parameter in ).If is , only descendants with a valid node are checked.Note: This method can be very slow. Consider storing references to the found nodes in a variable.Note: To find a single descendant node matching a pattern, see .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>FindChildren</span>(<span class='o'>pattern</span>: <span class='kt'>string</span>,<span class='o'>type</span>: <span class='kt'>string</span> = '',<span class='o'>recursive</span>: <span class='kt'>boolean</span> = True,<span class='o'>owned</span>: <span class='kt'>boolean</span> = True) -> <span class='kt'>Array__Node</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>pattern</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>type</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>recursive</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>owned</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### FindParent(string)
> Finds the first ancestor of this node whose matches , returning if no match is found. The matching is done through String.match. As such, it is case-sensitive, "*" matches zero or more characters, and "?" matches any single character. See also and .Note: As this method walks upwards in the scene tree, it can be slow in large, deeply nested nodes. Consider storing a reference to the found node in a variable. Alternatively, use with unique names (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>FindParent</span>(<span class='o'>pattern</span>: <span class='kt'>string</span>) -> <span class='kt'>Node</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>pattern</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasNodeAndResource(string)
> Returns if points to a valid node and its subnames point to a valid , e.g. Area2D/CollisionShape2D:shape. Properties that are not types (such as nodes or other types) are not considered. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasNodeAndResource</span>(<span class='o'>path</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>path</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetNodeAndResource(string)
> Fetches a node and its most nested resource as specified by the 's subname. Returns an of size 3 where:- Element 0 is the , or if not found;- Element 1 is the subname's last nested , or if not found;- Element 2 is the remaining , referring to an existing, non- property (see ).Example: Assume that the child's has been assigned a : var a = GetNodeAndResource(NodePath("Area2D/Sprite2D")); GD.Print(a[0].Name); // Prints Sprite2D GD.Print(a[1]); // Prints <null> GD.Print(a[2]); // Prints ^" var b = GetNodeAndResource(NodePath("Area2D/Sprite2D:texture:atlas")); GD.Print(b[0].name); // Prints Sprite2D GD.Print(b[1].get_class()); // Prints AtlasTexture GD.Print(b[2]); // Prints ^"" var c = GetNodeAndResource(NodePath("Area2D/Sprite2D:texture:atlas:region")); GD.Print(c[0].name); // Prints Sprite2D GD.Print(c[1].get_class()); // Prints AtlasTexture GD.Print(c[2]); // Prints ^":region"
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetNodeAndResource</span>(<span class='o'>path</span>: <span class='kt'>string</span>) -> <span class='kt'>Array</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>path</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsInsideTree
> Returns if this node is currently inside a . See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsInsideTree</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### IsPartOfEditedScene
> Returns if the node is part of the scene currently opened in the editor.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsPartOfEditedScene</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### IsAncestorOf(Node)
> Returns if the given is a direct or indirect child of this node.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsAncestorOf</span>(<span class='o'>node</span>: <span class='kt'>Node</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>node</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsGreaterThan(Node)
> Returns if the given occurs later in the scene hierarchy than this node. A node occurring later is usually processed last.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsGreaterThan</span>(<span class='o'>node</span>: <span class='kt'>Node</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>node</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetPath
> Returns the node's absolute path, relative to the . If the node is not inside the scene tree, this method fails and returns an empty .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetPath</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### GetPathTo(Node,boolean)
> Returns the relative from this node to the specified . Both nodes must be in the same or scene hierarchy, otherwise this method fails and returns an empty .If is , returns the shortest path accounting for this node's unique name (see ).Note: If you get a relative path which starts from a unique node, the path may be longer than a normal relative path, due to the addition of the unique node's name.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetPathTo</span>(<span class='o'>node</span>: <span class='kt'>Node</span>,<span class='o'>useUniquePath</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>node</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>useUniquePath</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AddToGroup(string,boolean)
> Adds the node to the . Groups can be helpful to organize a subset of nodes, for example "enemies" or "collectables". See notes in the description, and the group methods in .If is , the group will be stored when saved inside a . All groups created and displayed in the Node dock are persistent.Note: To improve performance, the order of group names is not guaranteed and may vary between project runs. Therefore, do not rely on the group order.Note:'s group methods will not work on this node if not inside the tree (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddToGroup</span>(<span class='o'>group</span>: <span class='kt'>string</span>,<span class='o'>persistent</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>group</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>persistent</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveFromGroup(string)
> Removes the node from the given . Does nothing if the node is not in the . See also notes in the description, and the 's group methods.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveFromGroup</span>(<span class='o'>group</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>group</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsInGroup(string)
> Returns if this node has been added to the given . See and . See also notes in the description, and the 's group methods.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsInGroup</span>(<span class='o'>group</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>group</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### MoveChild(Node,number)
> Moves to the given index. A node's index is the order among its siblings. If is negative, the index is counted from the end of the list. See also and .Note: The processing order of several engine callbacks (, , etc.) and notifications sent through is affected by tree order. nodes are also rendered in tree order. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>MoveChild</span>(<span class='o'>childNode</span>: <span class='kt'>Node</span>,<span class='o'>toIndex</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>childNode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>toIndex</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetGroups
> Returns an of group names that the node has been added to.Note: To improve performance, the order of group names is not guaranteed and may vary between project runs. Therefore, do not rely on the group order.Note: This method may also return some group names starting with an underscore (_). These are internally used by the engine. To avoid conflicts, do not use custom groups starting with underscores. To exclude internal groups, see the following code snippet: // Stores the node's non-internal groups only (as a List of StringNames). List<string> nonInternalGroups = new List<string>(); foreach (string group in GetGroups()) { if (!group.BeginsWith("_")) nonInternalGroups.Add(group); }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetGroups</span>() -> <span class='kt'>Array__string</span>
</pre>
</div>
</div>

### SetOwner(Node)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetOwner</span>(<span class='o'>owner</span>: <span class='kt'>Node</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>owner</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetOwner
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetOwner</span>() -> <span class='kt'>Node</span>
</pre>
</div>
</div>

### GetIndex(boolean)
> Returns this node's order among its siblings. The first node's index is 0. See also .If is , returns the index ignoring internal children. The first, non-internal child will have an index of 0 (see 's internal parameter).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetIndex</span>(<span class='o'>includeInternal</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>includeInternal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### PrintTree
> Prints the node and its children to the console, recursively. The node does not have to be inside the tree. This method outputs s relative to this node, and is good for copy/pasting into . See also .May print, for example: . Menu Menu/Label Menu/Camera2D SplashScreen SplashScreen/Camera2D
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>PrintTree</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### PrintTreePretty
> Prints the node and its children to the console, recursively. The node does not have to be inside the tree. Similar to , but the graphical representation looks like what is displayed in the editor's Scene dock. It is useful for inspecting larger trees.May print, for example: ┖╴TheGame ┠╴Menu ┃ ┠╴Label ┃ ┖╴Camera2D ┖╴SplashScreen ┖╴Camera2D
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>PrintTreePretty</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### GetTreeString
> Returns the tree as a . Used mainly for debugging purposes. This version displays the path relative to the current node, and is good for copy/pasting into the function. It also can be used in game UI/UX.May print, for example: TheGame TheGame/Menu TheGame/Menu/Label TheGame/Menu/Camera2D TheGame/SplashScreen TheGame/SplashScreen/Camera2D
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTreeString</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### GetTreeStringPretty
> Similar to , this returns the tree as a . This version displays a more graphical representation similar to what is displayed in the Scene Dock. It is useful for inspecting larger trees.May print, for example: ┖╴TheGame ┠╴Menu ┃ ┠╴Label ┃ ┖╴Camera2D ┖╴SplashScreen ┖╴Camera2D
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTreeStringPretty</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### SetSceneFilePath(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetSceneFilePath</span>(<span class='o'>sceneFilePath</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>sceneFilePath</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetSceneFilePath
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetSceneFilePath</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### PropagateNotification(number)
> Calls with on this node and all of its children, recursively.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>PropagateNotification</span>(<span class='o'>what</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>what</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### PropagateCall(string,Array,boolean)
> Calls the given name, passing as arguments, on this node and all of its children, recursively.If is , the method is called on this node first, then on all of its children. If , the children's methods are called first.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>PropagateCall</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>Array</span>,<span class='o'>parentFirst</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Array</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>parentFirst</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetPhysicsProcess(boolean)
> If set to , enables physics (fixed framerate) processing. When a node is being processed, it will receive a at a fixed (usually 60 FPS, see to change) interval (and the callback will be called if it exists).Note: If is overridden, this will be automatically enabled before is called.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetPhysicsProcess</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetPhysicsProcessDeltaTime
> Returns the time elapsed (in seconds) since the last physics callback. This value is identical to 's delta parameter, and is often consistent at run-time, unless is changed. See also .Note: The returned value will be larger than expected if running at a framerate lower than / FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both and . As a result, avoid using delta for time measurements in real-world seconds. Use the singleton's methods for this purpose instead, such as .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetPhysicsProcessDeltaTime</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### IsPhysicsProcessing
> Returns if physics processing is enabled (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsPhysicsProcessing</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### GetProcessDeltaTime
> Returns the time elapsed (in seconds) since the last process callback. This value is identical to 's delta parameter, and may vary from frame to frame. See also .Note: The returned value will be larger than expected if running at a framerate lower than / FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both and . As a result, avoid using delta for time measurements in real-world seconds. Use the singleton's methods for this purpose instead, such as .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetProcessDeltaTime</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### SetProcess(boolean)
> If set to , enables processing. When a node is being processed, it will receive a on every drawn frame (and the callback will be called if it exists).Note: If is overridden, this will be automatically enabled before is called.Note: This method only affects the callback, i.e. it has no effect on other callbacks like . If you want to disable all processing for the node, set to .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetProcess</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetProcessPriority(number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetProcessPriority</span>(<span class='o'>priority</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>priority</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetProcessPriority
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetProcessPriority</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### SetPhysicsProcessPriority(number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetPhysicsProcessPriority</span>(<span class='o'>priority</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>priority</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetPhysicsProcessPriority
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetPhysicsProcessPriority</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### IsProcessing
> Returns if processing is enabled (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsProcessing</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetProcessInput(boolean)
> If set to , enables input processing.Note: If is overridden, this will be automatically enabled before is called. Input processing is also already enabled for GUI controls, such as and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetProcessInput</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsProcessingInput
> Returns if the node is processing input (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsProcessingInput</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetProcessShortcutInput(boolean)
> If set to , enables shortcut processing for this node.Note: If is overridden, this will be automatically enabled before is called.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetProcessShortcutInput</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsProcessingShortcutInput
> Returns if the node is processing shortcuts (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsProcessingShortcutInput</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetProcessUnhandledInput(boolean)
> If set to , enables unhandled input processing. It enables the node to receive all input that was not previously handled (usually by a ).Note: If is overridden, this will be automatically enabled before is called. Unhandled input processing is also already enabled for GUI controls, such as and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetProcessUnhandledInput</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsProcessingUnhandledInput
> Returns if the node is processing unhandled input (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsProcessingUnhandledInput</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetProcessUnhandledKeyInput(boolean)
> If set to , enables unhandled key input processing.Note: If is overridden, this will be automatically enabled before is called.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetProcessUnhandledKeyInput</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsProcessingUnhandledKeyInput
> Returns if the node is processing unhandled key input (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsProcessingUnhandledKeyInput</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetProcessMode(ProcessModeEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetProcessMode</span>(<span class='o'>mode</span>: <span class='kt'>ProcessModeEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ProcessModeEnum</span> {:/} | {::nomarkdown} <span class='o'>mode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetProcessMode
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetProcessMode</span>() -> <span class='kt'>ProcessModeEnum</span>
</pre>
</div>
</div>

### CanProcess
> Returns if the node can receive processing notifications and input callbacks (, , etc.) from the and . The returned value depends on :- If set to , returns when the game is processing, i.e. is ;- If set to , returns when the game is paused, i.e. is ;- If set to , always returns ;- If set to , always returns ;- If set to , use the parent node's to determine the result.If the node is not inside the tree, returns no matter the value of .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CanProcess</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetProcessThreadGroup(ProcessThreadGroupEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetProcessThreadGroup</span>(<span class='o'>mode</span>: <span class='kt'>ProcessThreadGroupEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ProcessThreadGroupEnum</span> {:/} | {::nomarkdown} <span class='o'>mode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetProcessThreadGroup
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetProcessThreadGroup</span>() -> <span class='kt'>ProcessThreadGroupEnum</span>
</pre>
</div>
</div>

### SetProcessThreadMessages(ProcessThreadMessagesEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetProcessThreadMessages</span>(<span class='o'>flags</span>: <span class='kt'>ProcessThreadMessagesEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ProcessThreadMessagesEnum</span> {:/} | {::nomarkdown} <span class='o'>flags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetProcessThreadMessages
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetProcessThreadMessages</span>() -> <span class='kt'>ProcessThreadMessagesEnum</span>
</pre>
</div>
</div>

### SetProcessThreadGroupOrder(number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetProcessThreadGroupOrder</span>(<span class='o'>order</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>order</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetProcessThreadGroupOrder
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetProcessThreadGroupOrder</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### SetDisplayFolded(boolean)
> If set to , the node appears folded in the Scene dock. As a result, all of its children are hidden. This method is intended to be used in editor plugins and tools, but it also works in release builds. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetDisplayFolded</span>(<span class='o'>fold</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>fold</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsDisplayedFolded
> Returns if the node is folded (collapsed) in the Scene dock. This method is intended to be used in editor plugins and tools. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsDisplayedFolded</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetProcessInternal(boolean)
> If set to , enables internal processing for this node. Internal processing happens in isolation from the normal calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or processing is disabled for scripting ().Warning: Built-in nodes rely on internal processing for their internal logic. Disabling it is unsafe and may lead to unexpected behavior. Use this method if you know what you are doing.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetProcessInternal</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsProcessingInternal
> Returns if internal processing is enabled (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsProcessingInternal</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetPhysicsProcessInternal(boolean)
> If set to , enables internal physics for this node. Internal physics processing happens in isolation from the normal calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or physics processing is disabled for scripting ().Warning: Built-in nodes rely on internal processing for their internal logic. Disabling it is unsafe and may lead to unexpected behavior. Use this method if you know what you are doing.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetPhysicsProcessInternal</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsPhysicsProcessingInternal
> Returns if internal physics processing is enabled (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsPhysicsProcessingInternal</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetPhysicsInterpolationMode(PhysicsInterpolationModeEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetPhysicsInterpolationMode</span>(<span class='o'>mode</span>: <span class='kt'>PhysicsInterpolationModeEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>PhysicsInterpolationModeEnum</span> {:/} | {::nomarkdown} <span class='o'>mode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetPhysicsInterpolationMode
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetPhysicsInterpolationMode</span>() -> <span class='kt'>PhysicsInterpolationModeEnum</span>
</pre>
</div>
</div>

### IsPhysicsInterpolated
> Returns if physics interpolation is enabled for this node (see ).Note: Interpolation will only be active if both the flag is set and physics interpolation is enabled within the . This can be tested using .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsPhysicsInterpolated</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### IsPhysicsInterpolatedAndEnabled
> Returns if physics interpolation is enabled (see ) and enabled in the .This is a convenience version of that also checks whether physics interpolation is enabled globally.See and ProjectSettings.physics/common/physics_interpolation.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsPhysicsInterpolatedAndEnabled</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### ResetPhysicsInterpolation
> When physics interpolation is active, moving a node to a radically different transform (such as placement within a level) can result in a visible glitch as the object is rendered moving from the old to new position over the physics tick.That glitch can be prevented by calling this method, which temporarily disables interpolation until the physics tick is complete.The notification will be received by the node and all children recursively.Note: This function should be called after moving the node, rather than before.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ResetPhysicsInterpolation</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### SetAutoTranslateMode(AutoTranslateModeEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAutoTranslateMode</span>(<span class='o'>mode</span>: <span class='kt'>AutoTranslateModeEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>AutoTranslateModeEnum</span> {:/} | {::nomarkdown} <span class='o'>mode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetAutoTranslateMode
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetAutoTranslateMode</span>() -> <span class='kt'>AutoTranslateModeEnum</span>
</pre>
</div>
</div>

### SetTranslationDomainInherited
> Makes this node inherit the translation domain from its parent node. If this node has no parent, the main translation domain will be used.This is the default behavior for all nodes. Calling disables this behavior.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetTranslationDomainInherited</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### GetWindow
> Returns the that contains this node. If the node is in the main window, this is equivalent to getting the root node (get_tree().get_root()).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetWindow</span>() -> <span class='kt'>Window</span>
</pre>
</div>
</div>

### GetLastExclusiveWindow
> Returns the that contains this node, or the last exclusive child in a chain of windows starting with the one that contains this node.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetLastExclusiveWindow</span>() -> <span class='kt'>Window</span>
</pre>
</div>
</div>

### GetTree
> Returns the that contains this node. If this node is not inside the tree, generates an error and returns . See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTree</span>() -> <span class='kt'>SceneTree</span>
</pre>
</div>
</div>

### CreateTween
> Creates a new and binds it to this node.This is the equivalent of doing: GetTree().CreateTween().BindNode(this); The Tween will start automatically on the next process frame or physics frame (depending on ). See for more info on Tweens bound to nodes.Note: The method can still be used when the node is not inside . It can fail in an unlikely case of using a custom .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CreateTween</span>() -> <span class='kt'>Tween</span>
</pre>
</div>
</div>

### Duplicate(number)
> Duplicates the node, returning a new node with all of its properties, signals, groups, and children copied from the original. The behavior can be tweaked through the (see ).Note: For nodes with a attached, if has been defined with required parameters, the duplicated node will not have a .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Duplicate</span>(<span class='o'>flags</span>: <span class='kt'>number</span> = 15) -> <span class='kt'>Node</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>flags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### ReplaceBy(Node,boolean)
> Replaces this node by the given . All children of this node are moved to .If is , the is added to the same groups that the replaced node is in (see ).Warning: The replaced node is removed from the tree, but it is not deleted. To prevent memory leaks, store a reference to the node in a variable, or use .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ReplaceBy</span>(<span class='o'>node</span>: <span class='kt'>Node</span>,<span class='o'>keepGroups</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>node</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>keepGroups</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetSceneInstanceLoadPlaceholder(boolean)
> If set to , the node becomes a when packed and instantiated from a . See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetSceneInstanceLoadPlaceholder</span>(<span class='o'>loadPlaceholder</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>loadPlaceholder</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetSceneInstanceLoadPlaceholder
> Returns if this node is an instance load placeholder. See and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetSceneInstanceLoadPlaceholder</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetEditableInstance(Node,boolean)
> Set to to allow all nodes owned by to be available, and editable, in the Scene dock, even if their is not the scene root. This method is intended to be used in editor plugins and tools, but it also works in release builds. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetEditableInstance</span>(<span class='o'>node</span>: <span class='kt'>Node</span>,<span class='o'>isEditable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>node</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>isEditable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsEditableInstance(Node)
> Returns if has editable children enabled relative to this node. This method is intended to be used in editor plugins and tools. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsEditableInstance</span>(<span class='o'>node</span>: <span class='kt'>Node</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>node</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetViewport
> Returns the node's closest ancestor, if the node is inside the tree. Otherwise, returns .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetViewport</span>() -> <span class='kt'>Viewport</span>
</pre>
</div>
</div>

### QueueFree
> Queues this node to be deleted at the end of the current frame. When deleted, all of its children are deleted as well, and all references to the node and its children become invalid.Unlike with , the node is not deleted instantly, and it can still be accessed before deletion. It is also safe to call multiple times. Use to check if the node will be deleted at the end of the frame.Note: The node will only be freed after all other deferred calls are finished. Using this method is not always the same as calling through .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>QueueFree</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### RequestReady
> Requests to be called again the next time the node enters the tree. Does not immediately call .Note: This method only affects the current node. If the node's children also need to request ready, this method needs to be called for each one of them. When the node and its children enter the tree again, the order of callbacks will be the same as normal.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RequestReady</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### IsNodeReady
> Returns if the node is ready, i.e. it's inside scene tree and all its children are initialized. resets it back to .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsNodeReady</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetMultiplayerAuthority(number,boolean)
> Sets the node's multiplayer authority to the peer with the given peer . The multiplayer authority is the peer that has authority over the node on the network. Defaults to peer ID 1 (the server). Useful in conjunction with and the .If is , the given peer is recursively set as the authority for all children of this node.Warning: This does not automatically replicate the new authority to other peers. It is the developer's responsibility to do so. You may replicate the new authority's information using , an RPC, or a . Furthermore, the parent's authority does not propagate to newly added children.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetMultiplayerAuthority</span>(<span class='o'>id</span>: <span class='kt'>number</span>,<span class='o'>recursive</span>: <span class='kt'>boolean</span> = True) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>id</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>recursive</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetMultiplayerAuthority
> Returns the peer ID of the multiplayer authority for this node. See .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetMultiplayerAuthority</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### IsMultiplayerAuthority
> Returns if the local system is the multiplayer authority of this node.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsMultiplayerAuthority</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### GetMultiplayer
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetMultiplayer</span>() -> <span class='kt'>MultiplayerApi</span>
</pre>
</div>
</div>

### RpcConfig(string,Variant)
> Changes the RPC configuration for the given . should either be to disable the feature (as by default), or a containing the following entries:- rpc_mode: see ;- transfer_mode: see ;- call_local: if , the method will also be called locally;- channel: an representing the channel to send the RPC on.Note: In GDScript, this method corresponds to the [annotation @GDScript.@rpc] annotation, with various parameters passed (@rpc(any), @rpc(authority)...). See also the high-level multiplayer tutorial.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RpcConfig</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>config</span>: <span class='kt'>Variant</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>config</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetRpcConfig
> Returns a mapping method names to their RPC configuration defined for this node using .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetRpcConfig</span>() -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

### SetEditorDescription(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetEditorDescription</span>(<span class='o'>editorDescription</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>editorDescription</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetEditorDescription
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetEditorDescription</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### SetUniqueNameInOwner(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetUniqueNameInOwner</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsUniqueNameInOwner
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsUniqueNameInOwner</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### Atr(string,string)
> Translates a , using the translation catalogs configured in the Project Settings. Further can be specified to help with the translation. Note that most nodes automatically translate their strings, so this method is mostly useful for formatted strings or custom drawn text.This method works the same as , with the addition of respecting the state.If is , or no translation is available, this method returns the without changes. See .For detailed examples, see Internationalizing games.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Atr</span>(<span class='o'>message</span>: <span class='kt'>string</span>,<span class='o'>context</span>: <span class='kt'>string</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>message</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>context</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AtrN(string,string,number,string)
> Translates a or , using the translation catalogs configured in the Project Settings. Further can be specified to help with the translation.This method works the same as , with the addition of respecting the state.If is , or no translation is available, this method returns or , without changes. See .The is the number, or amount, of the message's subject. It is used by the translation system to fetch the correct plural form for the current language.For detailed examples, see Localization using gettext.Note: Negative and numbers may not properly apply to some countable subjects. It's recommended to handle these cases with .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AtrN</span>(<span class='o'>message</span>: <span class='kt'>string</span>,<span class='o'>pluralMessage</span>: <span class='kt'>string</span>,<span class='o'>n</span>: <span class='kt'>number</span>,<span class='o'>context</span>: <span class='kt'>string</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>message</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>pluralMessage</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>n</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>context</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Rpc(string,Variant[])
> Sends a remote procedure call request for the given to peers on the network (and locally), sending additional arguments to the method called by the RPC. The call request will only be received by nodes with the same , including the exact same . Behavior depends on the RPC configuration for the given (see and [annotation @GDScript.@rpc]). By default, methods are not exposed to RPCs.May return if the call is successful, if the arguments passed in the do not match, if the node's cannot be fetched (such as when the node is not inside the tree), if 's connection is not available.Note: You can only safely use RPCs on clients after you received the signal from the . You also need to keep track of the connection state, either by the signals like or by checking (get_multiplayer().peer.get_connection_status() == CONNECTION_CONNECTED).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Rpc</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>Variant[]</span>) -> <span class='kt'>Error</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant[]</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Rpc(string,ReadOnlySpan__Variant)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Rpc</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>ReadOnlySpan__Variant</span>) -> <span class='kt'>Error</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Variant</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RpcId(number,string,Variant[])
> Sends a to a specific peer identified by (see ).May return if the call is successful, if the arguments passed in the do not match, if the node's cannot be fetched (such as when the node is not inside the tree), if 's connection is not available.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RpcId</span>(<span class='o'>peerId</span>: <span class='kt'>number</span>,<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>Variant[]</span>) -> <span class='kt'>Error</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>peerId</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant[]</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RpcId(number,string,ReadOnlySpan__Variant)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RpcId</span>(<span class='o'>peerId</span>: <span class='kt'>number</span>,<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>ReadOnlySpan__Variant</span>) -> <span class='kt'>Error</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>peerId</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Variant</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### UpdateConfigurationWarnings
> Refreshes the warnings displayed for this node in the Scene dock. Use to customize the warning messages to display.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>UpdateConfigurationWarnings</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### CallDeferredThreadGroup(string,Variant[])
> This function is similar to except that the call will take place when the node thread group is processed. If the node thread group processes in sub-threads, then the call will be done on that thread, right before or , the or or their internal versions are called.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CallDeferredThreadGroup</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>Variant[]</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant[]</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### CallDeferredThreadGroup(string,ReadOnlySpan__Variant)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CallDeferredThreadGroup</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>ReadOnlySpan__Variant</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Variant</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetDeferredThreadGroup(string,Variant)
> Similar to , but for setting properties.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetDeferredThreadGroup</span>(<span class='o'>property</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>Variant</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### NotifyDeferredThreadGroup(number)
> Similar to , but for notifications.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>NotifyDeferredThreadGroup</span>(<span class='o'>what</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>what</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### CallThreadSafe(string,Variant[])
> This function ensures that the calling of this function will succeed, no matter whether it's being done from a thread or not. If called from a thread that is not allowed to call the function, the call will become deferred. Otherwise, the call will go through directly.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CallThreadSafe</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>Variant[]</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant[]</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### CallThreadSafe(string,ReadOnlySpan__Variant)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CallThreadSafe</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>ReadOnlySpan__Variant</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Variant</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetThreadSafe(string,Variant)
> Similar to , but for setting properties.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetThreadSafe</span>(<span class='o'>property</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>Variant</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### NotifyThreadSafe(number)
> Similar to , but for notifications.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>NotifyThreadSafe</span>(<span class='o'>what</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>what</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Dispose
> Disposes of this .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Dispose</span>() -> <span class='kt'>nil</span>
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

### ToSignal(GodotObject,string)
> Returns a new awaiter configured to complete when the instance emits the signal specified by the parameter.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ToSignal</span>(<span class='o'>source</span>: <span class='kt'>GodotObject</span>,<span class='o'>signal</span>: <span class='kt'>string</span>) -> <span class='kt'>SignalAwaiter</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>GodotObject</span> {:/} | {::nomarkdown} <span class='o'>source</span> {:/} | {::nomarkdown} <span class='c'>The instance the awaiter will be listening to.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'>The signal the awaiter will be waiting for.</span> {:/} |
{:class="table table-bordered highlight"}

### _Get(string)
> Override this method to customize the behavior of . Should return the given 's value, or if the should be handled normally.Combined with and , this method allows defining custom properties, which is particularly useful for editor plugins. Note that a property must be present in , otherwise this method will not be called. public override Variant _Get(StringName property) { if (property == "FakeProperty") { GD.Print("Getting my property!"); return 4; } return default; } public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetPropertyList() { return [ new Godot.Collections.Dictionary() { { "name", "FakeProperty" }, { "type", (int)Variant.Type.Int }, }, ]; }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_Get</span>(<span class='o'>property</span>: <span class='kt'>string</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _GetPropertyList
> Override this method to provide a custom list of additional properties to handle by the engine.Should return a property list, as an of dictionaries. The result is added to the array of , and should be formatted in the same way. Each must at least contain the name and type entries.You can use and to customize the default values of the properties added by this method.The example below displays a list of numbers shown as words going from ZERO to FIVE, with number_count controlling the size of the list: [Tool] public partial class MyNode : Node { private int _numberCount; [Export] public int NumberCount { get => _numberCount; set { _numberCount = value; _numbers.Resize(_numberCount); NotifyPropertyListChanged(); } } private Godot.Collections.Array<int> _numbers = []; public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetPropertyList() { Godot.Collections.Array<Godot.Collections.Dictionary> properties = []; for (int i = 0; i < _numberCount; i++) { properties.Add(new Godot.Collections.Dictionary() { { "name", $"number_{i}" }, { "type", (int)Variant.Type.Int }, { "hint", (int)PropertyHint.Enum }, { "hint_string", "Zero,One,Two,Three,Four,Five" }, }); } return properties; } public override Variant _Get(StringName property) { string propertyName = property.ToString(); if (propertyName.StartsWith("number_")) { int index = int.Parse(propertyName.Substring("number_".Length)); return _numbers[index]; } return default; } public override bool _Set(StringName property, Variant value) { string propertyName = property.ToString(); if (propertyName.StartsWith("number_")) { int index = int.Parse(propertyName.Substring("number_".Length)); _numbers[index] = value.As<int>(); return true; } return false; } } Note: This method is intended for advanced purposes. For most common use cases, the scripting languages offer easier ways to handle properties. See [annotation @GDScript.@export], [annotation @GDScript.@export_enum], [annotation @GDScript.@export_group], etc. If you want to customize exported properties, use .Note: If the object's script is not [annotation @GDScript.@tool], this method will not be called in the editor.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_GetPropertyList</span>() -> <span class='kt'>Array__Dictionary</span>
</pre>
</div>
</div>

### _IterGet(Variant)
> Returns the current iterable value. stores the iteration state, but unlike and the state is supposed to be read-only, so there is no wrapper.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_IterGet</span>(<span class='o'>iter</span>: <span class='kt'>Variant</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>iter</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _IterInit(Array)
> Initializes the iterator. stores the iteration state. Since GDScript does not support passing arguments by reference, a single-element array is used as a wrapper. Returns so long as the iterator has not reached the end.Example: class MyRange: var _from var _to func _init(from, to): assert(from <= to) _from = from _to = to func _iter_init(iter): iter[0] = _from return iter[0] < _to func _iter_next(iter): iter[0] += 1 return iter[0] < _to func _iter_get(iter): return iter func _ready(): var my_range = MyRange.new(2, 5) for x in my_range: print(x) # Prints 2, 3, 4. Note: Alternatively, you can ignore and use the object's state instead, see online docs for an example. Note that in this case you will not be able to reuse the same iterator instance in nested loops. Also, make sure you reset the iterator state in this method if you want to reuse the same instance multiple times.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_IterInit</span>(<span class='o'>iter</span>: <span class='kt'>Array</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Array</span> {:/} | {::nomarkdown} <span class='o'>iter</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _IterNext(Array)
> Moves the iterator to the next iteration. stores the iteration state. Since GDScript does not support passing arguments by reference, a single-element array is used as a wrapper. Returns so long as the iterator has not reached the end.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_IterNext</span>(<span class='o'>iter</span>: <span class='kt'>Array</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Array</span> {:/} | {::nomarkdown} <span class='o'>iter</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _Notification(number)
> Called when the object receives a notification, which can be identified in by comparing it with a constant. See also . public override void _Notification(int what) { if (what == NotificationPredelete) { GD.Print("Goodbye!"); } } Note: The base defines a few notifications ( and ). Inheriting classes such as define a lot more notifications, which are also received by this method.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_Notification</span>(<span class='o'>what</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>what</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _PropertyCanRevert(string)
> Override this method to customize the given 's revert behavior. Should return if the has a custom default value and is revertible in the Inspector dock. Use to specify the 's default value.Note: This method must return consistently, regardless of the current value of the .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_PropertyCanRevert</span>(<span class='o'>property</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _PropertyGetRevert(string)
> Override this method to customize the given 's revert behavior. Should return the default value for the . If the default value differs from the 's current value, a revert icon is displayed in the Inspector dock.Note: must also be overridden for this method to be called.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_PropertyGetRevert</span>(<span class='o'>property</span>: <span class='kt'>string</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _Set(string,Variant)
> Override this method to customize the behavior of . Should set the to and return , or if the should be handled normally. The exact way to set the is up to this method's implementation.Combined with and , this method allows defining custom properties, which is particularly useful for editor plugins. Note that a property must be present in , otherwise this method will not be called. private Godot.Collections.Dictionary _internalData = new Godot.Collections.Dictionary(); public override bool _Set(StringName property, Variant value) { if (property == "FakeProperty") { // Storing the value in the fake property. _internalData["FakeProperty"] = value; return true; } return false; } public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetPropertyList() { return [ new Godot.Collections.Dictionary() { { "name", "FakeProperty" }, { "type", (int)Variant.Type.Int }, }, ]; }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_Set</span>(<span class='o'>property</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>Variant</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _ValidateProperty(Dictionary)
> Override this method to customize existing properties. Every property info goes through this method, except properties added with . The dictionary contents is the same as in . [Tool] public partial class MyNode : Node { private bool _isNumberEditable; [Export] public bool IsNumberEditable { get => _isNumberEditable; set { _isNumberEditable = value; NotifyPropertyListChanged(); } } [Export] public int Number { get; set; } public override void _ValidateProperty(Godot.Collections.Dictionary property) { if (property["name"].AsStringName() == PropertyName.Number && !IsNumberEditable) { var usage = property["usage"].As<PropertyUsageFlags>() | PropertyUsageFlags.ReadOnly; property["usage"] = (int)usage; } } }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_ValidateProperty</span>(<span class='o'>property</span>: <span class='kt'>Dictionary</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Dictionary</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Free
> Deletes the object from memory. Pre-existing references to the object become invalid, and any attempt to access them will result in a run-time error. Checking the references with @GlobalScope.is_instance_valid will return .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Free</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### GetClass
> Returns the object's built-in class name, as a . See also .Note: This method ignores class_name declarations. If this object's script has defined a class_name, the base, built-in class name is returned instead.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetClass</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### IsClass(string)
> Returns if the object inherits from the given . See also . var sprite2D = new Sprite2D(); sprite2D.IsClass("Sprite2D"); // Returns true sprite2D.IsClass("Node"); // Returns true sprite2D.IsClass("Node3D"); // Returns false Note: This method ignores class_name declarations in the object's script.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsClass</span>(<span class='o'>class</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>class</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Set(string,Variant)
> Assigns to the given . If the property does not exist or the given 's type doesn't match, nothing happens. var node = new Node2D(); node.Set(Node2D.PropertyName.GlobalScale, new Vector2(8, 2.5f)); GD.Print(node.GlobalScale); // Prints (8, 2.5) Note: In C#, must be in snake_case when referring to built-in Godot properties. Prefer using the names exposed in the PropertyName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Set</span>(<span class='o'>property</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>Variant</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Get(string)
> Returns the value of the given . If the does not exist, this method returns . var node = new Node2D(); node.Rotation = 1.5f; var a = node.Get(Node2D.PropertyName.Rotation); // a is 1.5 Note: In C#, must be in snake_case when referring to built-in Godot properties. Prefer using the names exposed in the PropertyName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Get</span>(<span class='o'>property</span>: <span class='kt'>string</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetIndexed(string,Variant)
> Assigns a new to the property identified by the . The path should be a relative to this object, and can use the colon character (:) to access nested properties. var node = new Node2D(); node.SetIndexed("position", new Vector2(42, 0)); node.SetIndexed("position:y", -10); GD.Print(node.Position); // Prints (42, -10) Note: In C#, must be in snake_case when referring to built-in Godot properties. Prefer using the names exposed in the PropertyName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetIndexed</span>(<span class='o'>propertyPath</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>Variant</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>propertyPath</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetIndexed(string)
> Gets the object's property indexed by the given . The path should be a relative to the current object and can use the colon character (:) to access nested properties.Examples:"position:x" or "material:next_pass:blend_mode". var node = new Node2D(); node.Position = new Vector2(5, -10); var a = node.GetIndexed("position"); // a is Vector2(5, -10) var b = node.GetIndexed("position:y"); // b is -10 Note: In C#, must be in snake_case when referring to built-in Godot properties. Prefer using the names exposed in the PropertyName class to avoid allocating a new on each call.Note: This method does not support actual paths to nodes in the , only sub-property paths. In the context of nodes, use instead.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetIndexed</span>(<span class='o'>propertyPath</span>: <span class='kt'>string</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>propertyPath</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetPropertyList
> Returns the object's property list as an of dictionaries. Each contains the following entries:- name is the property's name, as a ;- class_name is an empty , unless the property is and it inherits from a class;- type is the property's type, as an (see );- hint is how the property is meant to be edited (see );- hint_string depends on the hint (see );- usage is a combination of .Note: In GDScript, all class members are treated as properties. In C# and GDExtension, it may be necessary to explicitly mark class members as Godot properties using decorators or attributes.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetPropertyList</span>() -> <span class='kt'>Array__Dictionary</span>
</pre>
</div>
</div>

### GetMethodList
> Returns this object's methods and their signatures as an of dictionaries. Each contains the following entries:- name is the name of the method, as a ;- args is an of dictionaries representing the arguments;- default_args is the default arguments as an of variants;- flags is a combination of ;- id is the method's internal identifier ;- return is the returned value, as a ;Note: The dictionaries of args and return are formatted identically to the results of , although not all entries are used.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetMethodList</span>() -> <span class='kt'>Array__Dictionary</span>
</pre>
</div>
</div>

### PropertyCanRevert(string)
> Returns if the given has a custom default value. Use to get the 's default value.Note: This method is used by the Inspector dock to display a revert icon. The object must implement to customize the default value. If is not implemented, this method returns .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>PropertyCanRevert</span>(<span class='o'>property</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### PropertyGetRevert(string)
> Returns the custom default value of the given . Use to check if the has a custom default value.Note: This method is used by the Inspector dock to display a revert icon. The object must implement to customize the default value. If is not implemented, this method returns .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>PropertyGetRevert</span>(<span class='o'>property</span>: <span class='kt'>string</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Notification(number,boolean)
> Sends the given notification to all classes inherited by the object, triggering calls to , starting from the highest ancestor (the class) and going down to the object's script.If is , the call order is reversed. var player = new Node2D(); player.SetScript(GD.Load("res://player.gd")); player.Notification(NotificationEnterTree); // The call order is GodotObject -> Node -> Node2D -> player.gd. player.Notification(NotificationEnterTree, true); // The call order is player.gd -> Node2D -> Node -> GodotObject.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Notification</span>(<span class='o'>what</span>: <span class='kt'>number</span>,<span class='o'>reversed</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>what</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>reversed</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetInstanceId
> Returns the object's unique instance ID. This ID can be saved in , and can be used to retrieve this object instance with @GlobalScope.instance_from_id.Note: This ID is only useful during the current session. It won't correspond to a similar object if the ID is sent over a network, or loaded from a file at a later time.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetInstanceId</span>() -> <span class='kt'>UInt64</span>
</pre>
</div>
</div>

### SetScript(Variant)
> Attaches to the object, and instantiates it. As a result, the script's is called. A is used to extend the object's functionality.If a script already exists, its instance is detached, and its property values and state are lost. Built-in property values are still kept.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetScript</span>(<span class='o'>script</span>: <span class='kt'>Variant</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>script</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetScript
> Returns the object's instance, or if no script is attached.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetScript</span>() -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

### SetMeta(string,Variant)
> Adds or changes the entry inside the object's metadata. The metadata can be any , although some types cannot be serialized correctly.If is , the entry is removed. This is the equivalent of using . See also and .Note: A metadata's name must be a valid identifier as per StringName.is_valid_identifier method.Note: Metadata that has a name starting with an underscore (_) is considered editor-only. Editor-only metadata is not displayed in the Inspector and should not be edited, although it can still be found by this method.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetMeta</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>Variant</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveMeta(string)
> Removes the given entry from the object's metadata. See also , and .Note: A metadata's name must be a valid identifier as per StringName.is_valid_identifier method.Note: Metadata that has a name starting with an underscore (_) is considered editor-only. Editor-only metadata is not displayed in the Inspector and should not be edited, although it can still be found by this method.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveMeta</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetMeta(string,Variant)
> Returns the object's metadata value for the given entry . If the entry does not exist, returns . If is , an error is also generated.Note: A metadata's name must be a valid identifier as per StringName.is_valid_identifier method.Note: Metadata that has a name starting with an underscore (_) is considered editor-only. Editor-only metadata is not displayed in the Inspector and should not be edited, although it can still be found by this method.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetMeta</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>default</span>: <span class='kt'>Variant</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>default</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasMeta(string)
> Returns if a metadata entry is found with the given . See also , and .Note: A metadata's name must be a valid identifier as per StringName.is_valid_identifier method.Note: Metadata that has a name starting with an underscore (_) is considered editor-only. Editor-only metadata is not displayed in the Inspector and should not be edited, although it can still be found by this method.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasMeta</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetMetaList
> Returns the object's metadata entry names as an of s.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetMetaList</span>() -> <span class='kt'>Array__string</span>
</pre>
</div>
</div>

### AddUserSignal(string,Array)
> Adds a user-defined signal named . Optional arguments for the signal can be added as an of dictionaries, each defining a name and a type (see ). See also and . AddUserSignal("Hurt", [ new Godot.Collections.Dictionary() { { "name", "damage" }, { "type", (int)Variant.Type.Int }, }, new Godot.Collections.Dictionary() { { "name", "source" }, { "type", (int)Variant.Type.Object }, }, ]);
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddUserSignal</span>(<span class='o'>signal</span>: <span class='kt'>string</span>,<span class='o'>arguments</span>: <span class='kt'>Array</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Array</span> {:/} | {::nomarkdown} <span class='o'>arguments</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasUserSignal(string)
> Returns if the given user-defined name exists. Only signals added with are included. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasUserSignal</span>(<span class='o'>signal</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveUserSignal(string)
> Removes the given user signal from the object. See also and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveUserSignal</span>(<span class='o'>signal</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### EmitSignal(string,Variant[])
> Emits the given by name. The signal must exist, so it should be a built-in signal of this class or one of its inherited classes, or a user-defined signal (see ). This method supports a variable number of arguments, so parameters can be passed as a comma separated list.Returns if does not exist or the parameters are invalid. EmitSignal(SignalName.Hit, "sword", 100); EmitSignal(SignalName.GameOver); Note: In C#, must be in snake_case when referring to built-in Godot signals. Prefer using the names exposed in the SignalName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>EmitSignal</span>(<span class='o'>signal</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>Variant[]</span>) -> <span class='kt'>Error</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant[]</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### EmitSignal(string,ReadOnlySpan__Variant)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>EmitSignal</span>(<span class='o'>signal</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>ReadOnlySpan__Variant</span>) -> <span class='kt'>Error</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Variant</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Call(string,Variant[])
> Calls the on the object and returns the result. This method supports a variable number of arguments, so parameters can be passed as a comma separated list. var node = new Node3D(); node.Call(Node3D.MethodName.Rotate, new Vector3(1f, 0f, 0f), 1.571f); Note: In C#, must be in snake_case when referring to built-in Godot methods. Prefer using the names exposed in the MethodName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Call</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>Variant[]</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant[]</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Call(string,ReadOnlySpan__Variant)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Call</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>ReadOnlySpan__Variant</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Variant</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### CallDeferred(string,Variant[])
> Calls the on the object during idle time. Always returns , not the method's result.Idle time happens mainly at the end of process and physics frames. In it, deferred calls will be run until there are none left, which means you can defer calls from other deferred calls and they'll still be run in the current idle time cycle. This means you should not call a method deferred from itself (or from a method called by it), as this causes infinite recursion the same way as if you had called the method directly.This method supports a variable number of arguments, so parameters can be passed as a comma separated list. var node = new Node3D(); node.CallDeferred(Node3D.MethodName.Rotate, new Vector3(1f, 0f, 0f), 1.571f); See also Callable.call_deferred.Note: In C#, must be in snake_case when referring to built-in Godot methods. Prefer using the names exposed in the MethodName class to avoid allocating a new on each call.Note: If you're looking to delay the function call by a frame, refer to the and signals. var node = Node3D.new() # Make a Callable and bind the arguments to the node's rotate() call. var callable = node.rotate.bind(Vector3(1.0, 0.0, 0.0), 1.571) # Connect the callable to the process_frame signal, so it gets called in the next process frame. # CONNECT_ONE_SHOT makes sure it only gets called once instead of every frame. get_tree().process_frame.connect(callable, CONNECT_ONE_SHOT)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CallDeferred</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>Variant[]</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant[]</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### CallDeferred(string,ReadOnlySpan__Variant)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CallDeferred</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>args</span>: <span class='kt'>ReadOnlySpan__Variant</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Variant</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetDeferred(string,Variant)
> Assigns to the given , at the end of the current frame. This is equivalent to calling through . var node = new Node2D(); node.Rotation = 1.5f; node.SetDeferred(Node2D.PropertyName.Rotation, 3f); GD.Print(node.Rotation); // Prints 1.5 await ToSignal(GetTree(), SceneTree.SignalName.ProcessFrame); GD.Print(node.Rotation); // Prints 3.0 Note: In C#, must be in snake_case when referring to built-in Godot properties. Prefer using the names exposed in the PropertyName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetDeferred</span>(<span class='o'>property</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>Variant</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>property</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Callv(string,Array)
> Calls the on the object and returns the result. Unlike , this method expects all parameters to be contained inside . var node = new Node3D(); node.Callv(Node3D.MethodName.Rotate, [new Vector3(1f, 0f, 0f), 1.571f]); Note: In C#, must be in snake_case when referring to built-in Godot methods. Prefer using the names exposed in the MethodName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Callv</span>(<span class='o'>method</span>: <span class='kt'>string</span>,<span class='o'>argArray</span>: <span class='kt'>Array</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Array</span> {:/} | {::nomarkdown} <span class='o'>argArray</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasMethod(string)
> Returns if the given name exists in the object.Note: In C#, must be in snake_case when referring to built-in Godot methods. Prefer using the names exposed in the MethodName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasMethod</span>(<span class='o'>method</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetMethodArgumentCount(string)
> Returns the number of arguments of the given by name.Note: In C#, must be in snake_case when referring to built-in Godot methods. Prefer using the names exposed in the MethodName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetMethodArgumentCount</span>(<span class='o'>method</span>: <span class='kt'>string</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>method</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasSignal(string)
> Returns if the given name exists in the object.Note: In C#, must be in snake_case when referring to built-in Godot signals. Prefer using the names exposed in the SignalName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasSignal</span>(<span class='o'>signal</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetSignalList
> Returns the list of existing signals as an of dictionaries.Note: Due of the implementation, each is formatted very similarly to the returned values of .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetSignalList</span>() -> <span class='kt'>Array__Dictionary</span>
</pre>
</div>
</div>

### GetSignalConnectionList(string)
> Returns an of connections for the given name. Each connection is represented as a that contains three entries:- signal is a reference to the ;- callable is a reference to the connected ;- flags is a combination of .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetSignalConnectionList</span>(<span class='o'>signal</span>: <span class='kt'>string</span>) -> <span class='kt'>Array__Dictionary</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetIncomingConnections
> Returns an of signal connections received by this object. Each connection is represented as a that contains three entries:- signal is a reference to the ;- callable is a reference to the ;- flags is a combination of .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetIncomingConnections</span>() -> <span class='kt'>Array__Dictionary</span>
</pre>
</div>
</div>

### Connect(string,Callable,UInt32)
> Connects a by name to a . Optional can be also added to configure the connection's behavior (see constants).A signal can only be connected once to the same . If the signal is already connected, this method returns and pushes an error message, unless the signal is connected with . To prevent this, use first to check for existing connections.If the 's object is freed, the connection will be lost.Examples with recommended syntax:Connecting signals is one of the most common operations in Godot and the API gives many options to do so, which are described further down. The code block below shows the recommended approach. public override void _Ready() { var button = new Button(); // C# supports passing signals as events, so we can use this idiomatic construct: button.ButtonDown += OnButtonDown; // This assumes that a `Player` class exists, which defines a `Hit` signal. var player = new Player(); // We can use lambdas when we need to bind additional parameters. player.Hit += () => OnPlayerHit("sword", 100); } private void OnButtonDown() { GD.Print("Button down!"); } private void OnPlayerHit(string weaponType, int damage) { GD.Print($"Hit with weapon {weaponType} for {damage} damage."); } Object.connect() or Signal.connect()?As seen above, the recommended method to connect signals is not . The code block below shows the four options for connecting signals, using either this legacy method or the recommended Signal.connect, and using either an implicit or a manually defined one. public override void _Ready() { var button = new Button(); // Option 1: In C#, we can use signals as events and connect with this idiomatic syntax: button.ButtonDown += OnButtonDown; // Option 2: GodotObject.Connect() with a constructed Callable from a method group. button.Connect(Button.SignalName.ButtonDown, Callable.From(OnButtonDown)); // Option 3: GodotObject.Connect() with a constructed Callable using a target object and method name. button.Connect(Button.SignalName.ButtonDown, new Callable(this, MethodName.OnButtonDown)); } private void OnButtonDown() { GD.Print("Button down!"); } While all options have the same outcome (button's signal will be connected to _on_button_down), option 3 offers the best validation: it will print a compile-time error if either the button_down or the _on_button_down are not defined. On the other hand, option 2 only relies on string names and will only be able to validate either names at runtime: it will print a runtime error if "button_down" doesn't correspond to a signal, or if "_on_button_down" is not a registered method in the object self. The main reason for using options 1, 2, or 4 would be if you actually need to use strings (e.g. to connect signals programmatically based on strings read from a configuration file). Otherwise, option 3 is the recommended (and fastest) method.Binding and passing parameters:The syntax to bind parameters is through Callable.bind, which returns a copy of the with its parameters bound.When calling or Signal.emit, the signal parameters can be also passed. The examples below show the relationship between these signal parameters and bound parameters. public override void _Ready() { // This assumes that a `Player` class exists, which defines a `Hit` signal. var player = new Player(); // Using lambda expressions that create a closure that captures the additional parameters. // The lambda only receives the parameters defined by the signal's delegate. player.Hit += (hitBy, level) => OnPlayerHit(hitBy, level, "sword", 100); // Parameters added when emitting the signal are passed first. player.EmitSignal(SignalName.Hit, "Dark lord", 5); } // We pass two arguments when emitting (`hit_by`, `level`), // and bind two more arguments when connecting (`weapon_type`, `damage`). private void OnPlayerHit(string hitBy, int level, string weaponType, int damage) { GD.Print($"Hit by {hitBy} (level {level}) with weapon {weaponType} for {damage} damage."); }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Connect</span>(<span class='o'>signal</span>: <span class='kt'>string</span>,<span class='o'>callable</span>: <span class='kt'>Callable</span>,<span class='o'>flags</span>: <span class='kt'>UInt32</span> = 0) -> <span class='kt'>Error</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Callable</span> {:/} | {::nomarkdown} <span class='o'>callable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>UInt32</span> {:/} | {::nomarkdown} <span class='o'>flags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Disconnect(string,Callable)
> Disconnects a by name from a given . If the connection does not exist, generates an error. Use to make sure that the connection exists.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Disconnect</span>(<span class='o'>signal</span>: <span class='kt'>string</span>,<span class='o'>callable</span>: <span class='kt'>Callable</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Callable</span> {:/} | {::nomarkdown} <span class='o'>callable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsConnected(string,Callable)
> Returns if a connection exists between the given name and .Note: In C#, must be in snake_case when referring to built-in Godot signals. Prefer using the names exposed in the SignalName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsConnected</span>(<span class='o'>signal</span>: <span class='kt'>string</span>,<span class='o'>callable</span>: <span class='kt'>Callable</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Callable</span> {:/} | {::nomarkdown} <span class='o'>callable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasConnections(string)
> Returns if any connection exists on the given name.Note: In C#, must be in snake_case when referring to built-in Godot methods. Prefer using the names exposed in the SignalName class to avoid allocating a new on each call.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasConnections</span>(<span class='o'>signal</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>signal</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetBlockSignals(boolean)
> If set to , the object becomes unable to emit signals. As such, and signal connections will not work, until it is set to .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetBlockSignals</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsBlockingSignals
> Returns if the object is blocking its signals from being emitted. See .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsBlockingSignals</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### NotifyPropertyListChanged
> Emits the signal. This is mainly used to refresh the editor, so that the Inspector and editor plugins are properly updated.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>NotifyPropertyListChanged</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### SetMessageTranslation(boolean)
> If set to , allows the object to translate messages with and . Enabled by default. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetMessageTranslation</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### CanTranslateMessages
> Returns if the object is allowed to translate messages with and . See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CanTranslateMessages</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### Tr(string,string)
> Translates a , using the translation catalogs configured in the Project Settings. Further can be specified to help with the translation. Note that most nodes automatically translate their strings, so this method is mostly useful for formatted strings or custom drawn text.If is , or no translation is available, this method returns the without changes. See .For detailed examples, see Internationalizing games.Note: This method can't be used without an instance, as it requires the method. To translate strings in a static context, use .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Tr</span>(<span class='o'>message</span>: <span class='kt'>string</span>,<span class='o'>context</span>: <span class='kt'>string</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>message</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>context</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### TrN(string,string,number,string)
> Translates a or , using the translation catalogs configured in the Project Settings. Further can be specified to help with the translation.If is , or no translation is available, this method returns or , without changes. See .The is the number, or amount, of the message's subject. It is used by the translation system to fetch the correct plural form for the current language.For detailed examples, see Localization using gettext.Note: Negative and numbers may not properly apply to some countable subjects. It's recommended to handle these cases with .Note: This method can't be used without an instance, as it requires the method. To translate strings in a static context, use .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>TrN</span>(<span class='o'>message</span>: <span class='kt'>string</span>,<span class='o'>pluralMessage</span>: <span class='kt'>string</span>,<span class='o'>n</span>: <span class='kt'>number</span>,<span class='o'>context</span>: <span class='kt'>string</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>message</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>pluralMessage</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>n</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>context</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetTranslationDomain
> Returns the name of the translation domain used by and . See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTranslationDomain</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### SetTranslationDomain(string)
> Sets the name of the translation domain used by and . See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetTranslationDomain</span>(<span class='o'>domain</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>domain</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsQueuedForDeletion
> Returns if the method was called for the object.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsQueuedForDeletion</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### CancelFree
> If this method is called during , this object will reject being freed and will remain allocated. This is mostly an internal function used for error handling to avoid the user from freeing objects when they are not intended to.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CancelFree</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

