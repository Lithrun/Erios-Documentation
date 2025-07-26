---
title: Control
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
            
Base class for all UI-related nodes.  features a bounding rectangle that defines its extents, an anchor position relative to its parent control or the current viewport, and offsets relative to the anchor. The offsets update automatically when the node, any of its parents, or the screen size change.For more information on Godot's UI system, anchors, offsets, and containers, see the related tutorials in the manual. To build flexible UIs, you'll need a mix of UI elements that inherit from  and  nodes.Note: Since both  and  inherit from , they share several concepts from the class such as the  and  properties.User Interface nodes and inputGodot propagates input events via viewports. Each  is responsible for propagating s to their child nodes. As the  is a , this already happens automatically for all UI elements in your game.Input events are propagated through the  from the root node to all child nodes by calling . For UI elements specifically, it makes more sense to override the virtual method , which filters out unrelated input events, such as by checking z-order, , focus, or if the event was inside of the control's bounding box.Call  so no other node receives the event. Once you accept an input, it becomes handled so  will not process it.Only one  node can be in focus. Only the node in focus will receive events. To get the focus, call .  nodes lose focus when another node grabs it, or if you hide the node in focus.Sets  to  to tell a  node to ignore mouse or touch events. You'll need it if you place an icon on top of a button. resources change the control's appearance. The  of a  node affects all of its direct and indirect children (as long as a chain of controls is uninterrupted). To override some of the theme items, call one of the add_theme_*_override methods, like . You can also override theme items in the Inspector.Note: Theme items are not properties. This means you can't access their values using  and . Instead, use the get_theme_* and add_theme_*_override methods provided by this class.

## Constructors
{:.constructor}

### Control.__new()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Control.__new</span>()
</pre>
</div>
</div>

## Constants
*The value of a constant cannot be changed*
{: .notice--warning}

| Type | Name | Value | Description
| --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NotificationResized</span> {:/} | {::nomarkdown} <span class='m'>40</span> {:/} | {::nomarkdown} <span class='c'>Sent when the node changes size. Use to get the new size.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NotificationMouseEnter</span> {:/} | {::nomarkdown} <span class='m'>41</span> {:/} | {::nomarkdown} <span class='c'>Sent when the mouse cursor enters the control's (or any child control's) visible area, that is not occluded behind other Controls or Windows, provided its lets the event reach it and regardless if it's currently focused or not.Note: doesn't affect which Control receives the notification.See also .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NotificationMouseExit</span> {:/} | {::nomarkdown} <span class='m'>42</span> {:/} | {::nomarkdown} <span class='c'>Sent when the mouse cursor leaves the control's (and all child control's) visible area, that is not occluded behind other Controls or Windows, provided its lets the event reach it and regardless if it's currently focused or not.Note: doesn't affect which Control receives the notification.See also .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NotificationMouseEnterSelf</span> {:/} | {::nomarkdown} <span class='m'>60</span> {:/} | {::nomarkdown} <span class='c'>Sent when the mouse cursor enters the control's visible area, that is not occluded behind other Controls or Windows, provided its lets the event reach it and regardless if it's currently focused or not.Note: doesn't affect which Control receives the notification.See also .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NotificationMouseExitSelf</span> {:/} | {::nomarkdown} <span class='m'>61</span> {:/} | {::nomarkdown} <span class='c'>Sent when the mouse cursor leaves the control's visible area, that is not occluded behind other Controls or Windows, provided its lets the event reach it and regardless if it's currently focused or not.Note: doesn't affect which Control receives the notification.See also .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NotificationFocusEnter</span> {:/} | {::nomarkdown} <span class='m'>43</span> {:/} | {::nomarkdown} <span class='c'>Sent when the node grabs focus.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NotificationFocusExit</span> {:/} | {::nomarkdown} <span class='m'>44</span> {:/} | {::nomarkdown} <span class='c'>Sent when the node loses focus.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NotificationThemeChanged</span> {:/} | {::nomarkdown} <span class='m'>45</span> {:/} | {::nomarkdown} <span class='c'>Sent when the node needs to refresh its theme items. This happens in one of the following cases:- The property is changed on this node or any of its ancestors.- The property is changed on this node.- One of the node's theme property overrides is changed.- The node enters the scene tree.Note: As an optimization, this notification won't be sent from changes that occur while this node is outside of the scene tree. Instead, all of the theme item updates can be applied at once when the node enters the scene tree.Note: This notification is received alongside , so if you are instantiating a scene, the child nodes will not be initialized yet. You can use it to setup theming for this node, child nodes created from script, or if you want to access child nodes added in the editor, make sure the node is ready using . func _notification(what): if what == NOTIFICATION_THEME_CHANGED: if not is_node_ready(): await ready # Wait until ready signal. $Label.add_theme_color_override("font_color", Color.YELLOW)</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NotificationScrollBegin</span> {:/} | {::nomarkdown} <span class='m'>47</span> {:/} | {::nomarkdown} <span class='c'>Sent when this node is inside a which has begun being scrolled when dragging the scrollable area with a touch event. This notification is not sent when scrolling by dragging the scrollbar, scrolling with the mouse wheel or scrolling with keyboard/gamepad events.Note: This signal is only emitted on Android or iOS, or on desktop/web platforms when ProjectSettings.input_devices/pointing/emulate_touch_from_mouse is enabled.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NotificationScrollEnd</span> {:/} | {::nomarkdown} <span class='m'>48</span> {:/} | {::nomarkdown} <span class='c'>Sent when this node is inside a which has stopped being scrolled when dragging the scrollable area with a touch event. This notification is not sent when scrolling by dragging the scrollbar, scrolling with the mouse wheel or scrolling with keyboard/gamepad events.Note: This signal is only emitted on Android or iOS, or on desktop/web platforms when ProjectSettings.input_devices/pointing/emulate_touch_from_mouse is enabled.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NotificationLayoutDirectionChanged</span> {:/} | {::nomarkdown} <span class='m'>49</span> {:/} | {::nomarkdown} <span class='c'>Sent when the control layout direction is changed from LTR or RTL or vice versa. This notification is propagated to child Control nodes as result of a change to .</span> {:/} |
{:class="table table-bordered highlight"}

## ReadOnly
{:.readonly}

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>MultiplayerApi</span> {:/} | {::nomarkdown} <span class='nf'>Multiplayer</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The instance associated with this node. See .Note: Renaming the node, or moving it in the tree, will not move the to the new path, you will have to update this manually.</span> {:/} |
| {::nomarkdown} <span class='kt'>IntPtr</span> {:/} | {::nomarkdown} <span class='nf'>NativeInstance</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The pointer to the native instance of this .</span> {:/} |
{:class="table table-bordered highlight"}

## Properties
{:.property}

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get__ImportPath</span>() {:/} | {::nomarkdown} <span class='nf'>set__ImportPath</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Array__string</span> {:/} | {::nomarkdown} <span class='nf'>get_AccessibilityControlsNodes</span>() {:/} | {::nomarkdown} <span class='nf'>set_AccessibilityControlsNodes</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The paths to the nodes which are controlled by this node.</span> {:/} |
| {::nomarkdown} <span class='kt'>Array__string</span> {:/} | {::nomarkdown} <span class='nf'>get_AccessibilityDescribedByNodes</span>() {:/} | {::nomarkdown} <span class='nf'>set_AccessibilityDescribedByNodes</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The paths to the nodes which are describing this node.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_AccessibilityDescription</span>() {:/} | {::nomarkdown} <span class='nf'>set_AccessibilityDescription</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The human-readable node description that is reported to assistive apps.</span> {:/} |
| {::nomarkdown} <span class='kt'>Array__string</span> {:/} | {::nomarkdown} <span class='nf'>get_AccessibilityFlowToNodes</span>() {:/} | {::nomarkdown} <span class='nf'>set_AccessibilityFlowToNodes</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The paths to the nodes which this node flows into.</span> {:/} |
| {::nomarkdown} <span class='kt'>Array__string</span> {:/} | {::nomarkdown} <span class='nf'>get_AccessibilityLabeledByNodes</span>() {:/} | {::nomarkdown} <span class='nf'>set_AccessibilityLabeledByNodes</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The paths to the nodes which label this node.</span> {:/} |
| {::nomarkdown} <span class='kt'>AccessibilityLiveMode</span> {:/} | {::nomarkdown} <span class='nf'>get_AccessibilityLive</span>() {:/} | {::nomarkdown} <span class='nf'>set_AccessibilityLive</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The mode with which a live region updates. A live region is a that is updated as a result of an external event when the user's focus may be elsewhere.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_AccessibilityName</span>() {:/} | {::nomarkdown} <span class='nf'>set_AccessibilityName</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The human-readable node name that is reported to assistive apps.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_AnchorBottom</span>() {:/} | {::nomarkdown} <span class='nf'>set_AnchorBottom</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Anchors the bottom edge of the node to the origin, the center, or the end of its parent control. It changes how the bottom offset updates when the node moves or changes size. You can use one of the constants for convenience.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_AnchorLeft</span>() {:/} | {::nomarkdown} <span class='nf'>set_AnchorLeft</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Anchors the left edge of the node to the origin, the center or the end of its parent control. It changes how the left offset updates when the node moves or changes size. You can use one of the constants for convenience.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_AnchorRight</span>() {:/} | {::nomarkdown} <span class='nf'>set_AnchorRight</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Anchors the right edge of the node to the origin, the center or the end of its parent control. It changes how the right offset updates when the node moves or changes size. You can use one of the constants for convenience.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_AnchorsPreset</span>() {:/} | {::nomarkdown} <span class='nf'>set_AnchorsPreset</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_AnchorTop</span>() {:/} | {::nomarkdown} <span class='nf'>set_AnchorTop</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Anchors the top edge of the node to the origin, the center or the end of its parent control. It changes how the top offset updates when the node moves or changes size. You can use one of the constants for convenience.</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_AutoTranslate</span>() {:/} | {::nomarkdown} <span class='nf'>set_AutoTranslate</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Toggles if any text should automatically change to its translated version depending on the current locale.</span> {:/} |
| {::nomarkdown} <span class='kt'>AutoTranslateModeEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_AutoTranslateMode</span>() {:/} | {::nomarkdown} <span class='nf'>set_AutoTranslateMode</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Defines if any text should automatically change to its translated version depending on the current locale (for nodes such as , , , etc.). Also decides if the node's strings should be parsed for POT generation.Note: For the root node, auto translate mode can also be set via ProjectSettings.internationalization/rendering/root_node_auto_translate.</span> {:/} |
| {::nomarkdown} <span class='kt'>ClipChildrenMode</span> {:/} | {::nomarkdown} <span class='nf'>get_ClipChildren</span>() {:/} | {::nomarkdown} <span class='nf'>set_ClipChildren</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The mode in which this node clips its children, acting as a mask.Note: Clipping nodes cannot be nested or placed within a . If an ancestor of this node clips its children or is a , then this node's clip mode should be set to to avoid unexpected behavior.</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_ClipContents</span>() {:/} | {::nomarkdown} <span class='nf'>set_ClipContents</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Enables whether rendering of based children should be clipped to this control's rectangle. If , parts of a child which would be visibly outside of this control's rectangle will not be rendered and won't receive input.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='nf'>get_CustomMinimumSize</span>() {:/} | {::nomarkdown} <span class='nf'>set_CustomMinimumSize</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The minimum size of the node's bounding rectangle. If you set it to a value greater than (0, 0), the node's bounding rectangle will always have at least this size. Note that nodes have their internal minimum size returned by . It depends on the control's contents, like text, textures, or style boxes. The actual minimum size is the maximum value of this property and the internal minimum size (see ).</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_EditorDescription</span>() {:/} | {::nomarkdown} <span class='nf'>set_EditorDescription</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>An optional description to the node. It will be displayed as a tooltip when hovering over the node in the editor's Scene dock.</span> {:/} |
| {::nomarkdown} <span class='kt'>FocusBehaviorRecursiveEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_FocusBehaviorRecursive</span>() {:/} | {::nomarkdown} <span class='nf'>set_FocusBehaviorRecursive</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Determines which controls can be focused together with . See . Since the default behavior is , this can be used to prevent all children controls from getting focused.</span> {:/} |
| {::nomarkdown} <span class='kt'>FocusModeEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_FocusMode</span>() {:/} | {::nomarkdown} <span class='nf'>set_FocusMode</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Determines which controls can be focused. Only one control can be focused at a time, and the focused control will receive keyboard, gamepad, and mouse events in . Use to determine if a control can grab focus, since also affects it. See also .</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_FocusNeighborBottom</span>() {:/} | {::nomarkdown} <span class='nf'>set_FocusNeighborBottom</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Tells Godot which node it should give focus to if the user presses the down arrow on the keyboard or down on a gamepad by default. You can change the key by editing the ProjectSettings.input/ui_down input action. The node must be a . If this property is not set, Godot will give focus to the closest to the bottom of this one.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_FocusNeighborLeft</span>() {:/} | {::nomarkdown} <span class='nf'>set_FocusNeighborLeft</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Tells Godot which node it should give focus to if the user presses the left arrow on the keyboard or left on a gamepad by default. You can change the key by editing the ProjectSettings.input/ui_left input action. The node must be a . If this property is not set, Godot will give focus to the closest to the left of this one.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_FocusNeighborRight</span>() {:/} | {::nomarkdown} <span class='nf'>set_FocusNeighborRight</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Tells Godot which node it should give focus to if the user presses the right arrow on the keyboard or right on a gamepad by default. You can change the key by editing the ProjectSettings.input/ui_right input action. The node must be a . If this property is not set, Godot will give focus to the closest to the right of this one.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_FocusNeighborTop</span>() {:/} | {::nomarkdown} <span class='nf'>set_FocusNeighborTop</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Tells Godot which node it should give focus to if the user presses the top arrow on the keyboard or top on a gamepad by default. You can change the key by editing the ProjectSettings.input/ui_up input action. The node must be a . If this property is not set, Godot will give focus to the closest to the top of this one.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_FocusNext</span>() {:/} | {::nomarkdown} <span class='nf'>set_FocusNext</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Tells Godot which node it should give focus to if the user presses Tab on a keyboard by default. You can change the key by editing the ProjectSettings.input/ui_focus_next input action.If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_FocusPrevious</span>() {:/} | {::nomarkdown} <span class='nf'>set_FocusPrevious</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Tells Godot which node it should give focus to if the user presses Shift + Tab on a keyboard by default. You can change the key by editing the ProjectSettings.input/ui_focus_prev input action.If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='nf'>get_GlobalPosition</span>() {:/} | {::nomarkdown} <span class='nf'>set_GlobalPosition</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The node's global position, relative to the world (usually to the ).</span> {:/} |
| {::nomarkdown} <span class='kt'>GrowDirection</span> {:/} | {::nomarkdown} <span class='nf'>get_GrowHorizontal</span>() {:/} | {::nomarkdown} <span class='nf'>set_GrowHorizontal</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Controls the direction on the horizontal axis in which the control should grow if its horizontal minimum size is changed to be greater than its current size, as the control always has to be at least the minimum size.</span> {:/} |
| {::nomarkdown} <span class='kt'>GrowDirection</span> {:/} | {::nomarkdown} <span class='nf'>get_GrowVertical</span>() {:/} | {::nomarkdown} <span class='nf'>set_GrowVertical</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Controls the direction on the vertical axis in which the control should grow if its vertical minimum size is changed to be greater than its current size, as the control always has to be at least the minimum size.</span> {:/} |
| {::nomarkdown} <span class='kt'>LayoutDirectionEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_LayoutDirection</span>() {:/} | {::nomarkdown} <span class='nf'>set_LayoutDirection</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Controls layout direction and text writing direction. Right-to-left layouts are necessary for certain languages (e.g. Arabic and Hebrew). See also .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_LayoutMode</span>() {:/} | {::nomarkdown} <span class='nf'>set_LayoutMode</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_LightMask</span>() {:/} | {::nomarkdown} <span class='nf'>set_LightMask</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The rendering layers in which this responds to nodes.</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_LocalizeNumeralSystem</span>() {:/} | {::nomarkdown} <span class='nf'>set_LocalizeNumeralSystem</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>If , automatically converts code line numbers, list indices, and values from the Western Arabic (0..9) to the numeral systems used in current locale.Note: Numbers within the text are not automatically converted, it can be done manually, using .</span> {:/} |
| {::nomarkdown} <span class='kt'>Material</span> {:/} | {::nomarkdown} <span class='nf'>get_Material</span>() {:/} | {::nomarkdown} <span class='nf'>set_Material</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The material applied to this .</span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='nf'>get_Modulate</span>() {:/} | {::nomarkdown} <span class='nf'>set_Modulate</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The color applied to this . This property does affect child s, unlike which only affects the node itself.</span> {:/} |
| {::nomarkdown} <span class='kt'>MouseBehaviorRecursiveEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_MouseBehaviorRecursive</span>() {:/} | {::nomarkdown} <span class='nf'>set_MouseBehaviorRecursive</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Determines which controls can receive mouse input together with . See . Since the default behavior is , this can be used to prevent all children controls from receiving mouse input.</span> {:/} |
| {::nomarkdown} <span class='kt'>CursorShape</span> {:/} | {::nomarkdown} <span class='nf'>get_MouseDefaultCursorShape</span>() {:/} | {::nomarkdown} <span class='nf'>set_MouseDefaultCursorShape</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The default cursor shape for this control. Useful for Godot plugins and applications or games that use the system's mouse cursors.Note: On Linux, shapes may vary depending on the cursor theme of the system.</span> {:/} |
| {::nomarkdown} <span class='kt'>MouseFilterEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_MouseFilter</span>() {:/} | {::nomarkdown} <span class='nf'>set_MouseFilter</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Determines which controls will be able to receive mouse button input events through and the , and signals. Also determines how these events should be propagated. See the constants to learn what each does. Use to determine if a control can receive mouse input, since also affects it.</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_MouseForcePassScrollEvents</span>() {:/} | {::nomarkdown} <span class='nf'>set_MouseForcePassScrollEvents</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>When enabled, scroll wheel events processed by will be passed to the parent control even if is set to .You should disable it on the root of your UI if you do not want scroll events to go to the processing.Note: Because this property defaults to , this allows nested scrollable containers to work out of the box.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_Name</span>() {:/} | {::nomarkdown} <span class='nf'>set_Name</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The name of the node. This name must be unique among the siblings (other child nodes from the same parent). When set to an existing sibling's name, the node is automatically renamed.Note: When changing the name, the following characters will be replaced with an underscore: (.:@/"%). In particular, the @ character is reserved for auto-generated names. See also String.validate_node_name.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_OffsetBottom</span>() {:/} | {::nomarkdown} <span class='nf'>set_OffsetBottom</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Distance between the node's bottom edge and its parent control, based on .Offsets are often controlled by one or multiple parent nodes, so you should not modify them manually if your node is a direct child of a . Offsets update automatically when you move or resize the node.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_OffsetLeft</span>() {:/} | {::nomarkdown} <span class='nf'>set_OffsetLeft</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Distance between the node's left edge and its parent control, based on .Offsets are often controlled by one or multiple parent nodes, so you should not modify them manually if your node is a direct child of a . Offsets update automatically when you move or resize the node.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_OffsetRight</span>() {:/} | {::nomarkdown} <span class='nf'>set_OffsetRight</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Distance between the node's right edge and its parent control, based on .Offsets are often controlled by one or multiple parent nodes, so you should not modify them manually if your node is a direct child of a . Offsets update automatically when you move or resize the node.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_OffsetTop</span>() {:/} | {::nomarkdown} <span class='nf'>set_OffsetTop</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Distance between the node's top edge and its parent control, based on .Offsets are often controlled by one or multiple parent nodes, so you should not modify them manually if your node is a direct child of a . Offsets update automatically when you move or resize the node.</span> {:/} |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='nf'>get_Owner</span>() {:/} | {::nomarkdown} <span class='nf'>set_Owner</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The owner of this node. The owner must be an ancestor of this node. When packing the owner node in a , all the nodes it owns are also saved with it. See also .Note: In the editor, nodes not owned by the scene root are usually not displayed in the Scene dock, and will not be saved. To prevent this, remember to set the owner after calling .</span> {:/} |
| {::nomarkdown} <span class='kt'>PhysicsInterpolationModeEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_PhysicsInterpolationMode</span>() {:/} | {::nomarkdown} <span class='nf'>set_PhysicsInterpolationMode</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The physics interpolation mode to use for this node. Only effective if ProjectSettings.physics/common/physics_interpolation or is .By default, nodes inherit the physics interpolation mode from their parent. This property can enable or disable physics interpolation individually for each node, regardless of their parents' physics interpolation mode.Note: Some node types like have physics interpolation disabled by default, as they rely on their own custom solution.Note: When teleporting a node to a distant position, it's recommended to temporarily disable interpolation with after moving the node. This avoids creating a visual streak between the old and new positions.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='nf'>get_PivotOffset</span>() {:/} | {::nomarkdown} <span class='nf'>set_PivotOffset</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>By default, the node's pivot is its top-left corner. When you change its or , it will rotate or scale around this pivot. Set this property to / 2 to pivot around the Control's center.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='nf'>get_Position</span>() {:/} | {::nomarkdown} <span class='nf'>set_Position</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The node's position, relative to its containing node. It corresponds to the rectangle's top-left corner. The property is not affected by .</span> {:/} |
| {::nomarkdown} <span class='kt'>ProcessModeEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessMode</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessMode</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The node's processing behavior. To check if the node can process in its current mode, use .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessPhysicsPriority</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessPhysicsPriority</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Similar to but for , , or .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessPriority</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessPriority</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The node's execution order of the process callbacks (, , and ). Nodes whose priority value is lower call their process callbacks first, regardless of tree order.</span> {:/} |
| {::nomarkdown} <span class='kt'>ProcessThreadGroupEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessThreadGroup</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessThreadGroup</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Set the process thread group for this node (basically, whether it receives , , or (and the internal versions) on the main thread or in a sub-thread.By default, the thread group is , which means that this node belongs to the same thread group as the parent node. The thread groups means that nodes in a specific thread group will process together, separate to other thread groups (depending on ). If the value is set is , this thread group will occur on a sub thread (not the main thread), otherwise if set to it will process on the main thread. If there is not a parent or grandparent node set to something other than inherit, the node will belong to the default thread group. This default group will process on the main thread and its group order is 0.During processing in a sub-thread, accessing most functions in nodes outside the thread group is forbidden (and it will result in an error in debug mode). Use , , and the likes in order to communicate from the thread groups to the main thread (or to other thread groups).To better understand process thread groups, the idea is that any node set to any other value than will include any child (and grandchild) nodes set to inherit into its process thread group. This means that the processing of all the nodes in the group will happen together, at the same time as the node including them.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessThreadGroupOrder</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessThreadGroupOrder</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Change the process thread group order. Groups with a lesser order will process before groups with a greater order. This is useful when a large amount of nodes process in sub thread and, afterwards, another group wants to collect their result in the main thread, as an example.</span> {:/} |
| {::nomarkdown} <span class='kt'>ProcessThreadMessagesEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_ProcessThreadMessages</span>() {:/} | {::nomarkdown} <span class='nf'>set_ProcessThreadMessages</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Set whether the current thread group will process messages (calls to on threads), and whether it wants to receive them during regular process or physics process callbacks.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_Rotation</span>() {:/} | {::nomarkdown} <span class='nf'>set_Rotation</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The node's rotation around its pivot, in radians. See to change the pivot's position.Note: This property is edited in the inspector in degrees. If you want to use degrees in a script, use .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_RotationDegrees</span>() {:/} | {::nomarkdown} <span class='nf'>set_RotationDegrees</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Helper property to access in degrees instead of radians.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='nf'>get_Scale</span>() {:/} | {::nomarkdown} <span class='nf'>set_Scale</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The node's scale, relative to its . Change this property to scale the node around its . The Control's tooltip will also scale according to this value.Note: This property is mainly intended to be used for animation purposes. To support multiple resolutions in your project, use an appropriate viewport stretch mode as described in the documentation instead of scaling Controls individually.Note: does not take into account. This means that scaling up/down will cause bitmap fonts and rasterized (non-MSDF) dynamic fonts to appear blurry or pixelated. To ensure text remains crisp regardless of scale, you can enable MSDF font rendering by enabling ProjectSettings.gui/theme/default_font_multichannel_signed_distance_field (applies to the default project font only), or enabling Multichannel Signed Distance Field in the import options of a DynamicFont for custom fonts. On system fonts, can be enabled in the inspector.Note: If the Control node is a child of a node, the scale will be reset to Vector2(1, 1) when the scene is instantiated. To set the Control's scale when it's instantiated, wait for one frame using await get_tree().process_frame then set its property.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_SceneFilePath</span>() {:/} | {::nomarkdown} <span class='nf'>set_SceneFilePath</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The original scene's file path, if the node has been instantiated from a file. Only scene root nodes contains this.</span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='nf'>get_SelfModulate</span>() {:/} | {::nomarkdown} <span class='nf'>set_SelfModulate</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The color applied to this . This property does not affect child s, unlike which affects both the node itself and its children.Note: Internal children are also not affected by this property (see the include_internal parameter in ). For built-in nodes this includes sliders in , and the tab bar in .</span> {:/} |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='nf'>get_ShortcutContext</span>() {:/} | {::nomarkdown} <span class='nf'>set_ShortcutContext</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The which must be a parent of the focused for the shortcut to be activated. If , the shortcut can be activated when any control is focused (a global shortcut). This allows shortcuts to be accepted only when the user has a certain area of the GUI focused.</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_ShowBehindParent</span>() {:/} | {::nomarkdown} <span class='nf'>set_ShowBehindParent</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>If , this node draws behind its parent.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='nf'>get_Size</span>() {:/} | {::nomarkdown} <span class='nf'>set_Size</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The size of the node's bounding rectangle, in the node's coordinate system. nodes update this property automatically.</span> {:/} |
| {::nomarkdown} <span class='kt'>SizeFlags</span> {:/} | {::nomarkdown} <span class='nf'>get_SizeFlagsHorizontal</span>() {:/} | {::nomarkdown} <span class='nf'>set_SizeFlagsHorizontal</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Tells the parent nodes how they should resize and place the node on the X axis. Use a combination of the constants to change the flags. See the constants to learn what each does.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_SizeFlagsStretchRatio</span>() {:/} | {::nomarkdown} <span class='nf'>set_SizeFlagsStretchRatio</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>If the node and at least one of its neighbors uses the size flag, the parent will let it take more or less space depending on this property. If this node has a stretch ratio of 2 and its neighbor a ratio of 1, this node will take two thirds of the available space.</span> {:/} |
| {::nomarkdown} <span class='kt'>SizeFlags</span> {:/} | {::nomarkdown} <span class='nf'>get_SizeFlagsVertical</span>() {:/} | {::nomarkdown} <span class='nf'>set_SizeFlagsVertical</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Tells the parent nodes how they should resize and place the node on the Y axis. Use a combination of the constants to change the flags. See the constants to learn what each does.</span> {:/} |
| {::nomarkdown} <span class='kt'>TextureFilterEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_TextureFilter</span>() {:/} | {::nomarkdown} <span class='nf'>set_TextureFilter</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The filtering mode used to render this 's texture(s).</span> {:/} |
| {::nomarkdown} <span class='kt'>TextureRepeatEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_TextureRepeat</span>() {:/} | {::nomarkdown} <span class='nf'>set_TextureRepeat</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The repeating mode used to render this 's texture(s). It affects what happens when the texture is sampled outside its extents, for example by setting a that is larger than the texture or assigning UV points outside the texture.Note: is not affected by , as it uses its own texture repeating implementation.</span> {:/} |
| {::nomarkdown} <span class='kt'>Theme</span> {:/} | {::nomarkdown} <span class='nf'>get_Theme</span>() {:/} | {::nomarkdown} <span class='nf'>set_Theme</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The resource this node and all its and children use. If a child node has its own resource set, theme items are merged with child's definitions having higher priority.Note: styles will have no effect unless the window is embedded.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_ThemeTypeVariation</span>() {:/} | {::nomarkdown} <span class='nf'>set_ThemeTypeVariation</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The name of a theme type variation used by this to look up its own theme items. When empty, the class name of the node is used (e.g. Button for the control), as well as the class names of all parent classes (in order of inheritance).When set, this property gives the highest priority to the type of the specified name. This type can in turn extend another type, forming a dependency chain. See . If the theme item cannot be found using this type or its base types, lookup falls back on the class names.Note: To look up 's own items use various get_theme_* methods without specifying theme_type.Note: Theme items are looked for in the tree order, from branch to root, where each node is checked for its property. The earliest match against any type/class name is returned. The project-level Theme and the default Theme are checked last.</span> {:/} |
| {::nomarkdown} <span class='kt'>AutoTranslateModeEnum</span> {:/} | {::nomarkdown} <span class='nf'>get_TooltipAutoTranslateMode</span>() {:/} | {::nomarkdown} <span class='nf'>set_TooltipAutoTranslateMode</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Defines if tooltip text should automatically change to its translated version depending on the current locale. Uses the same auto translate mode as this control when set to .Note: Tooltips customized using do not use this auto translate mode automatically.</span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='nf'>get_TooltipText</span>() {:/} | {::nomarkdown} <span class='nf'>set_TooltipText</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The default tooltip text. The tooltip appears when the user's mouse cursor stays idle over this control for a few moments, provided that the property is not . The time required for the tooltip to appear can be changed with the ProjectSettings.gui/timers/tooltip_delay_sec setting.This string is the default return value of . Override to generate tooltip text dynamically. Override to customize the tooltip interface and behavior.The tooltip popup will use either a default implementation, or a custom one that you can provide by overriding . The default tooltip includes a and whose theme properties can be customized using methods with the "TooltipPanel" and "TooltipLabel" respectively. For example: var styleBox = new StyleBoxFlat(); styleBox.SetBgColor(new Color(1, 1, 0)); styleBox.SetBorderWidthAll(2); // We assume here that the `Theme` property has been assigned a custom Theme beforehand. Theme.SetStyleBox("panel", "TooltipPanel", styleBox); Theme.SetColor("font_color", "TooltipLabel", new Color(0, 1, 1));</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_TopLevel</span>() {:/} | {::nomarkdown} <span class='nf'>set_TopLevel</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>If , this will not inherit its transform from parent s. Its draw order will also be changed to make it draw on top of other s that do not have set to . The will effectively act as if it was placed as a child of a bare .</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_UniqueNameInOwner</span>() {:/} | {::nomarkdown} <span class='nf'>set_UniqueNameInOwner</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>If , the node can be accessed from any node sharing the same or from the itself, with special %Name syntax in .Note: If another node with the same shares the same as this node, the other node will no longer be accessible as unique.</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_UseParentMaterial</span>() {:/} | {::nomarkdown} <span class='nf'>set_UseParentMaterial</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>If , the parent 's is used as this node's material.</span> {:/} |
| {::nomarkdown} <span class='kt'>UInt32</span> {:/} | {::nomarkdown} <span class='nf'>get_VisibilityLayer</span>() {:/} | {::nomarkdown} <span class='nf'>set_VisibilityLayer</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The rendering layer in which this is rendered by nodes. A will render a if it and all its parents share a layer with the 's canvas cull mask.</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_Visible</span>() {:/} | {::nomarkdown} <span class='nf'>set_Visible</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>If , this may be drawn. Whether this is actually drawn depends on the visibility of all of its ancestors. In other words: this will be drawn when returns and all ancestors share at least one with this .Note: For controls that inherit , the correct way to make them visible is to call one of the multiple popup*() functions instead.</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_YSortEnabled</span>() {:/} | {::nomarkdown} <span class='nf'>set_YSortEnabled</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>If , this and child nodes with a higher Y position are rendered in front of nodes with a lower Y position. If , this and child nodes are rendered normally in scene tree order.With Y-sorting enabled on a parent node ('A') but disabled on a child node ('B'), the child node ('B') is sorted but its children ('C1', 'C2', etc.) render together on the same Y position as the child node ('B'). This allows you to organize the render order of a scene without changing the scene tree.Nodes sort relative to each other only if they are on the same .</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>get_ZAsRelative</span>() {:/} | {::nomarkdown} <span class='nf'>set_ZAsRelative</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>If , this node's final Z index is relative to its parent's Z index.For example, if is 2 and its parent's final Z index is 3, then this node's final Z index will be 5 (2 + 3).</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_ZIndex</span>() {:/} | {::nomarkdown} <span class='nf'>set_ZIndex</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The order in which this node is drawn. A node with a higher Z index will display in front of others. Must be between and (inclusive).Note: The Z index does not affect the order in which nodes are processed or the way input events are handled. This is especially important to keep in mind for nodes.</span> {:/} |
{:class="table table-bordered highlight"}

## Functions
{:.function}

*Requires an instance!*
{: .notice--warning}

### _AccessibilityGetContextualInfo
> Return the description of the keyboard shortcuts and other contextual help for this control.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_AccessibilityGetContextualInfo</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### _CanDropData(Vector2,Variant)
> Godot calls this method to test if from a control's can be dropped at . is local to this control.This method should only be used to test the data. Process the data in .Note: If the drag was initiated by a keyboard shortcut or , is set to Vector2.INF, and the currently selected item/text position should be used as the drop position. public override bool _CanDropData(Vector2 atPosition, Variant data) { // Check position if it is relevant to you // Otherwise, just check data return data.VariantType == Variant.Type.Dictionary && data.AsGodotDictionary().ContainsKey("expected"); }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_CanDropData</span>(<span class='o'>atPosition</span>: <span class='kt'>Vector2</span>,<span class='o'>data</span>: <span class='kt'>Variant</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>atPosition</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>data</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _DropData(Vector2,Variant)
> Godot calls this method to pass you the from a control's result. Godot first calls to test if is allowed to drop at where is local to this control.Note: If the drag was initiated by a keyboard shortcut or , is set to Vector2.INF, and the currently selected item/text position should be used as the drop position. public override bool _CanDropData(Vector2 atPosition, Variant data) { return data.VariantType == Variant.Type.Dictionary && data.AsGodotDictionary().ContainsKey("color"); } public override void _DropData(Vector2 atPosition, Variant data) { Color color = data.AsGodotDictionary()["color"].AsColor(); }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_DropData</span>(<span class='o'>atPosition</span>: <span class='kt'>Vector2</span>,<span class='o'>data</span>: <span class='kt'>Variant</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>atPosition</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>data</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _GetAccessibilityContainerName(Node)
> Override this method to return a human-readable description of the position of the child in the custom container, added to the .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_GetAccessibilityContainerName</span>(<span class='o'>node</span>: <span class='kt'>Node</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>node</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _GetDragData(Vector2)
> Godot calls this method to get data that can be dragged and dropped onto controls that expect drop data. Returns if there is no data to drag. Controls that want to receive drop data should implement and . is local to this control. Drag may be forced with .A preview that will follow the mouse that should represent the data can be set with . A good time to set the preview is in this method.Note: If the drag was initiated by a keyboard shortcut or , is set to Vector2.INF, and the currently selected item/text position should be used as the drag position. public override Variant _GetDragData(Vector2 atPosition) { var myData = MakeData(); // This is your custom method generating the drag data. SetDragPreview(MakePreview(myData)); // This is your custom method generating the preview of the drag data. return myData; }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_GetDragData</span>(<span class='o'>atPosition</span>: <span class='kt'>Vector2</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>atPosition</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _GetMinimumSize
> Virtual method to be implemented by the user. Returns the minimum size for this control. Alternative to for controlling minimum size via code. The actual minimum size will be the max value of these two (in each axis separately).If not overridden, defaults to Vector2.ZERO.Note: This method will not be called when the script is attached to a node that already overrides its minimum size (e.g. , , etc.). It can only be used with most basic GUI nodes, like , , etc.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_GetMinimumSize</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### _GetTooltip(Vector2)
> Virtual method to be implemented by the user. Returns the tooltip text for the position in control's local coordinates, which will typically appear when the cursor is resting over this control. See .Note: If this method returns an empty and is not overridden, no tooltip is displayed.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_GetTooltip</span>(<span class='o'>atPosition</span>: <span class='kt'>Vector2</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>atPosition</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _GuiInput(InputEvent)
> Virtual method to be implemented by the user. Override this method to handle and accept inputs on UI elements. See also .Example: Click on the control to print a message: public override void _GuiInput(InputEvent @event) { if (@event is InputEventMouseButton mb) { if (mb.ButtonIndex == MouseButton.Left && mb.Pressed) { GD.Print("I've been clicked D:"); } } } If the inherits , this method will not be called when:- the control's is set to ;- the control is obstructed by another control on top, that doesn't have set to ;- the control's parent has set to or has accepted the event;- the control's parent has enabled and the 's position is outside the parent's rectangle;- the 's position is outside the control (see ).Note: The 's position is relative to this control's origin.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_GuiInput</span>(<span class='o'>event</span>: <span class='kt'>InputEvent</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>InputEvent</span> {:/} | {::nomarkdown} <span class='o'>event</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _HasPoint(Vector2)
> Virtual method to be implemented by the user. Returns whether the given is inside this control.If not overridden, default behavior is checking if the point is within control's Rect.Note: If you want to check if a point is inside the control, you can use Rect2(Vector2.ZERO, size).has_point(point).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_HasPoint</span>(<span class='o'>point</span>: <span class='kt'>Vector2</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>point</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _MakeCustomTooltip(string)
> Virtual method to be implemented by the user. Returns a node that should be used as a tooltip instead of the default one. is the return value of .The returned node must be of type or Control-derived. It can have child nodes of any type. It is freed when the tooltip disappears, so make sure you always provide a new instance (if you want to use a pre-existing node from your scene tree, you can duplicate it and pass the duplicated instance). When or a non-Control node is returned, the default tooltip will be used instead.The returned node will be added as child to a , so you should only provide the contents of that panel. That can be themed using for the type "TooltipPanel" (see for an example).Note: The tooltip is shrunk to minimal size. If you want to ensure it's fully visible, you might want to set its to some non-zero value.Note: The node (and any relevant children) should have their set to when returned, otherwise, the viewport that instantiates it will not be able to calculate its minimum size reliably.Note: If overridden, this method is called even if returns an empty string. When this happens with the default tooltip, it is not displayed. To copy this behavior, return in this method when is empty.Example: Use a constructed node as a tooltip: public override Control _MakeCustomTooltip(string forText) { var label = new Label(); label.Text = forText; return label; } Example: Usa a scene instance as a tooltip: public override Control _MakeCustomTooltip(string forText) { Node tooltip = ResourceLoader.Load<PackedScene>("res://some_tooltip_scene.tscn").Instantiate(); tooltip.GetNode<Label>("Label").Text = forText; return tooltip; }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_MakeCustomTooltip</span>(<span class='o'>forText</span>: <span class='kt'>string</span>) -> <span class='kt'>GodotObject</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>forText</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### _StructuredTextParser(Array,string)
> User defined BiDi algorithm override function.Returns an of text ranges and text base directions, in the left-to-right order. Ranges should cover full source without overlaps. BiDi algorithm will be used on each range separately.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_StructuredTextParser</span>(<span class='o'>args</span>: <span class='kt'>Array</span>,<span class='o'>text</span>: <span class='kt'>string</span>) -> <span class='kt'>Array__Vector3I</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Array</span> {:/} | {::nomarkdown} <span class='o'>args</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AcceptEvent
> Marks an input event as handled. Once you accept an input event, it stops propagating, even to nodes listening to or .Note: This does not affect the methods in , only the way events are propagated.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AcceptEvent</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### GetMinimumSize
> Returns the minimum size for this control. See .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetMinimumSize</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetCombinedMinimumSize
> Returns combined minimum size from and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetCombinedMinimumSize</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### SetAnchorsPreset(LayoutPreset,boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAnchorsPreset</span>(<span class='o'>preset</span>: <span class='kt'>LayoutPreset</span>,<span class='o'>keepOffsets</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>LayoutPreset</span> {:/} | {::nomarkdown} <span class='o'>preset</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>keepOffsets</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetOffsetsPreset(LayoutPreset,LayoutPresetMode,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetOffsetsPreset</span>(<span class='o'>preset</span>: <span class='kt'>LayoutPreset</span>,<span class='o'>resizeMode</span>: <span class='kt'>LayoutPresetMode</span> = Minsize,<span class='o'>margin</span>: <span class='kt'>number</span> = 0) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>LayoutPreset</span> {:/} | {::nomarkdown} <span class='o'>preset</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>LayoutPresetMode</span> {:/} | {::nomarkdown} <span class='o'>resizeMode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>margin</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetAnchorsAndOffsetsPreset(LayoutPreset,LayoutPresetMode,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAnchorsAndOffsetsPreset</span>(<span class='o'>preset</span>: <span class='kt'>LayoutPreset</span>,<span class='o'>resizeMode</span>: <span class='kt'>LayoutPresetMode</span> = Minsize,<span class='o'>margin</span>: <span class='kt'>number</span> = 0) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>LayoutPreset</span> {:/} | {::nomarkdown} <span class='o'>preset</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>LayoutPresetMode</span> {:/} | {::nomarkdown} <span class='o'>resizeMode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>margin</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetAnchor(Side,number,boolean,boolean)
> Sets the anchor for the specified to . A setter method for , , and .If is , offsets aren't updated after this operation.If is and the opposite anchor overlaps this anchor, the opposite one will have its value overridden. For example, when setting left anchor to 1 and the right anchor has value of 0.5, the right anchor will also get value of 1. If was , the left anchor would get value 0.5.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAnchor</span>(<span class='o'>side</span>: <span class='kt'>Side</span>,<span class='o'>anchor</span>: <span class='kt'>number</span>,<span class='o'>keepOffset</span>: <span class='kt'>boolean</span> = False,<span class='o'>pushOppositeAnchor</span>: <span class='kt'>boolean</span> = True) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Side</span> {:/} | {::nomarkdown} <span class='o'>side</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>anchor</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>keepOffset</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>pushOppositeAnchor</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetAnchor(Side)
> Returns the anchor for the specified . A getter method for , , and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetAnchor</span>(<span class='o'>side</span>: <span class='kt'>Side</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Side</span> {:/} | {::nomarkdown} <span class='o'>side</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetOffset(Side,number)
> Sets the offset for the specified to . A setter method for , , and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetOffset</span>(<span class='o'>side</span>: <span class='kt'>Side</span>,<span class='o'>offset</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Side</span> {:/} | {::nomarkdown} <span class='o'>side</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>offset</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetOffset(Side)
> Returns the offset for the specified . A getter method for , , and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetOffset</span>(<span class='o'>offset</span>: <span class='kt'>Side</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Side</span> {:/} | {::nomarkdown} <span class='o'>offset</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetAnchorAndOffset(Side,number,number,boolean)
> Works the same as , but instead of keep_offset argument and automatic update of offset, it allows to set the offset yourself (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAnchorAndOffset</span>(<span class='o'>side</span>: <span class='kt'>Side</span>,<span class='o'>anchor</span>: <span class='kt'>number</span>,<span class='o'>offset</span>: <span class='kt'>number</span>,<span class='o'>pushOppositeAnchor</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Side</span> {:/} | {::nomarkdown} <span class='o'>side</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>anchor</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>offset</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>pushOppositeAnchor</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetBegin(Vector2)
> Sets and at the same time. Equivalent of changing .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetBegin</span>(<span class='o'>position</span>: <span class='kt'>Vector2</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>position</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetEnd(Vector2)
> Sets and at the same time.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetEnd</span>(<span class='o'>position</span>: <span class='kt'>Vector2</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>position</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetPosition(Vector2,boolean)
> Sets the to given .If is , control's anchors will be updated instead of offsets.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetPosition</span>(<span class='o'>position</span>: <span class='kt'>Vector2</span>,<span class='o'>keepOffsets</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>position</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>keepOffsets</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetSize(Vector2,boolean)
> Sets the size (see ).If is , control's anchors will be updated instead of offsets.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetSize</span>(<span class='o'>size</span>: <span class='kt'>Vector2</span>,<span class='o'>keepOffsets</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>size</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>keepOffsets</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### ResetSize
> Resets the size to . This is equivalent to calling set_size(Vector2()) (or any size below the minimum).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ResetSize</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### SetCustomMinimumSize(Vector2)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetCustomMinimumSize</span>(<span class='o'>size</span>: <span class='kt'>Vector2</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>size</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetGlobalPosition(Vector2,boolean)
> Sets the to given .If is , control's anchors will be updated instead of offsets.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetGlobalPosition</span>(<span class='o'>position</span>: <span class='kt'>Vector2</span>,<span class='o'>keepOffsets</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>position</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>keepOffsets</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetRotation(number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetRotation</span>(<span class='o'>radians</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>radians</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetRotationDegrees(number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetRotationDegrees</span>(<span class='o'>degrees</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>degrees</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetScale(Vector2)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetScale</span>(<span class='o'>scale</span>: <span class='kt'>Vector2</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>scale</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetPivotOffset(Vector2)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetPivotOffset</span>(<span class='o'>pivotOffset</span>: <span class='kt'>Vector2</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pivotOffset</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetBegin
> Returns and . See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetBegin</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetEnd
> Returns and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetEnd</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetPosition
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetPosition</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetSize
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetSize</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetRotation
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetRotation</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### GetRotationDegrees
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetRotationDegrees</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### GetScale
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetScale</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetPivotOffset
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetPivotOffset</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetCustomMinimumSize
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetCustomMinimumSize</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetParentAreaSize
> Returns the width/height occupied in the parent control.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetParentAreaSize</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetGlobalPosition
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetGlobalPosition</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetScreenPosition
> Returns the position of this in global screen coordinates (i.e. taking window position into account). Mostly useful for editor plugins.Equals to if the window is embedded (see ).Example: Show a popup at the mouse position: popup_menu.position = get_screen_position() + get_local_mouse_position() popup_menu.reset_size() popup_menu.popup()
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetScreenPosition</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetRect
> Returns the position and size of the control in the coordinate system of the containing node. See , and .Note: If is not the default rotation, the resulting size is not meaningful.Note: Setting to can lead to rounding inaccuracies between the displayed control and the returned .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetRect</span>() -> <span class='kt'>Rect2</span>
</pre>
</div>
</div>

### GetGlobalRect
> Returns the position and size of the control relative to the containing canvas. See and .Note: If the node itself or any parent between the node and the canvas have a non default rotation or skew, the resulting size is likely not meaningful.Note: Setting to can lead to rounding inaccuracies between the displayed control and the returned .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetGlobalRect</span>() -> <span class='kt'>Rect2</span>
</pre>
</div>
</div>

### SetFocusMode(FocusModeEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetFocusMode</span>(<span class='o'>mode</span>: <span class='kt'>FocusModeEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>FocusModeEnum</span> {:/} | {::nomarkdown} <span class='o'>mode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetFocusMode
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetFocusMode</span>() -> <span class='kt'>FocusModeEnum</span>
</pre>
</div>
</div>

### GetFocusModeWithOverride
> Returns the , but takes the into account. If is set to , or it is set to and its ancestor is set to , then this returns .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetFocusModeWithOverride</span>() -> <span class='kt'>FocusModeEnum</span>
</pre>
</div>
</div>

### SetFocusBehaviorRecursive(FocusBehaviorRecursiveEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetFocusBehaviorRecursive</span>(<span class='o'>focusBehaviorRecursive</span>: <span class='kt'>FocusBehaviorRecursiveEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>FocusBehaviorRecursiveEnum</span> {:/} | {::nomarkdown} <span class='o'>focusBehaviorRecursive</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetFocusBehaviorRecursive
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetFocusBehaviorRecursive</span>() -> <span class='kt'>FocusBehaviorRecursiveEnum</span>
</pre>
</div>
</div>

### HasFocus
> Returns if this is the current focused control. See .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasFocus</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### GrabFocus
> Steal the focus from another control and become the focused control (see ).Note: Using this method together with Callable.call_deferred makes it more reliable, especially when called inside .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GrabFocus</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### ReleaseFocus
> Give up the focus. No other control will be able to receive input.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ReleaseFocus</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### FindPrevValidFocus
> Finds the previous (above in the tree) that can receive the focus.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>FindPrevValidFocus</span>() -> <span class='kt'>Control</span>
</pre>
</div>
</div>

### FindNextValidFocus
> Finds the next (below in the tree) that can receive the focus.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>FindNextValidFocus</span>() -> <span class='kt'>Control</span>
</pre>
</div>
</div>

### FindValidFocusNeighbor(Side)
> Finds the next that can receive the focus on the specified .Note: This is different from , which returns the path of a specified focus neighbor.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>FindValidFocusNeighbor</span>(<span class='o'>side</span>: <span class='kt'>Side</span>) -> <span class='kt'>Control</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Side</span> {:/} | {::nomarkdown} <span class='o'>side</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetHSizeFlags(SizeFlags)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetHSizeFlags</span>(<span class='o'>flags</span>: <span class='kt'>SizeFlags</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>SizeFlags</span> {:/} | {::nomarkdown} <span class='o'>flags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetHSizeFlags
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetHSizeFlags</span>() -> <span class='kt'>SizeFlags</span>
</pre>
</div>
</div>

### SetStretchRatio(number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetStretchRatio</span>(<span class='o'>ratio</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>ratio</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetStretchRatio
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetStretchRatio</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### SetVSizeFlags(SizeFlags)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetVSizeFlags</span>(<span class='o'>flags</span>: <span class='kt'>SizeFlags</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>SizeFlags</span> {:/} | {::nomarkdown} <span class='o'>flags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetVSizeFlags
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetVSizeFlags</span>() -> <span class='kt'>SizeFlags</span>
</pre>
</div>
</div>

### SetTheme(Theme)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetTheme</span>(<span class='o'>theme</span>: <span class='kt'>Theme</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Theme</span> {:/} | {::nomarkdown} <span class='o'>theme</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetTheme
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTheme</span>() -> <span class='kt'>Theme</span>
</pre>
</div>
</div>

### SetThemeTypeVariation(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetThemeTypeVariation</span>(<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetThemeTypeVariation
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetThemeTypeVariation</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### BeginBulkThemeOverride
> Prevents *_theme_*_override methods from emitting until is called.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>BeginBulkThemeOverride</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### EndBulkThemeOverride
> Ends a bulk theme override update. See .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>EndBulkThemeOverride</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### AddThemeIconOverride(string,Texture2D)
> Creates a local override for a theme icon with the specified . Local overrides always take precedence when fetching theme items for the control. An override can be removed with .See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddThemeIconOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>texture</span>: <span class='kt'>Texture2D</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AddThemeStyleboxOverride(string,StyleBox)
> Creates a local override for a theme with the specified . Local overrides always take precedence when fetching theme items for the control. An override can be removed with .See also .Example: Modify a property in a by duplicating it: // The snippet below assumes the child node "MyButton" has a StyleBoxFlat assigned. // Resources are shared across instances, so we need to duplicate it // to avoid modifying the appearance of all other buttons. StyleBoxFlat newStyleboxNormal = GetNode<Button>("MyButton").GetThemeStylebox("normal").Duplicate() as StyleBoxFlat; newStyleboxNormal.BorderWidthTop = 3; newStyleboxNormal.BorderColor = new Color(0, 1, 0.5f); GetNode<Button>("MyButton").AddThemeStyleboxOverride("normal", newStyleboxNormal); // Remove the stylebox override. GetNode<Button>("MyButton").RemoveThemeStyleboxOverride("normal");
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddThemeStyleboxOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>stylebox</span>: <span class='kt'>StyleBox</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>StyleBox</span> {:/} | {::nomarkdown} <span class='o'>stylebox</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AddThemeFontOverride(string,Font)
> Creates a local override for a theme with the specified . Local overrides always take precedence when fetching theme items for the control. An override can be removed with .See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddThemeFontOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>font</span>: <span class='kt'>Font</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AddThemeFontSizeOverride(string,number)
> Creates a local override for a theme font size with the specified . Local overrides always take precedence when fetching theme items for the control. An override can be removed with .See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddThemeFontSizeOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>fontSize</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AddThemeColorOverride(string,Color)
> Creates a local override for a theme with the specified . Local overrides always take precedence when fetching theme items for the control. An override can be removed with .See also .Example: Override a 's color and reset it later: // Given the child Label node "MyLabel", override its font color with a custom value. GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", new Color(1, 0.5f, 0)); // Reset the font color of the child label. GetNode<Label>("MyLabel").RemoveThemeColorOverride("font_color"); // Alternatively it can be overridden with the default value from the Label type. GetNode<Label>("MyLabel").AddThemeColorOverride("font_color", GetThemeColor("font_color", "Label"));
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddThemeColorOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>color</span>: <span class='kt'>Color</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AddThemeConstantOverride(string,number)
> Creates a local override for a theme constant with the specified . Local overrides always take precedence when fetching theme items for the control. An override can be removed with .See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddThemeConstantOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>constant</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>constant</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveThemeIconOverride(string)
> Removes a local override for a theme icon with the specified previously added by or via the Inspector dock.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveThemeIconOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveThemeStyleboxOverride(string)
> Removes a local override for a theme with the specified previously added by or via the Inspector dock.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveThemeStyleboxOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveThemeFontOverride(string)
> Removes a local override for a theme with the specified previously added by or via the Inspector dock.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveThemeFontOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveThemeFontSizeOverride(string)
> Removes a local override for a theme font size with the specified previously added by or via the Inspector dock.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveThemeFontSizeOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveThemeColorOverride(string)
> Removes a local override for a theme with the specified previously added by or via the Inspector dock.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveThemeColorOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveThemeConstantOverride(string)
> Removes a local override for a theme constant with the specified previously added by or via the Inspector dock.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveThemeConstantOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetThemeIcon(string,string)
> Returns an icon from the first matching in the tree if that has an icon item with the specified and .See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetThemeIcon</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>Texture2D</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetThemeStylebox(string,string)
> Returns a from the first matching in the tree if that has a stylebox item with the specified and .See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetThemeStylebox</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>StyleBox</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetThemeFont(string,string)
> Returns a from the first matching in the tree if that has a font item with the specified and .See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetThemeFont</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>Font</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetThemeFontSize(string,string)
> Returns a font size from the first matching in the tree if that has a font size item with the specified and .See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetThemeFontSize</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetThemeColor(string,string)
> Returns a from the first matching in the tree if that has a color item with the specified and . If is omitted the class name of the current control is used as the type, or if it is defined. If the type is a class name its parent classes are also checked, in order of inheritance. If the type is a variation its base types are checked, in order of dependency, then the control's class name and its parent classes are checked.For the current control its local overrides are considered first (see ), then its assigned . After the current control, each parent control and its assigned are considered; controls without a assigned are skipped. If no matching is found in the tree, the custom project (see ProjectSettings.gui/theme/custom) and the default are used (see ). public override void _Ready() { // Get the font color defined for the current Control's class, if it exists. Modulate = GetThemeColor("font_color"); // Get the font color defined for the Button class. Modulate = GetThemeColor("font_color", "Button"); }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetThemeColor</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>Color</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetThemeConstant(string,string)
> Returns a constant from the first matching in the tree if that has a constant item with the specified and .See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetThemeConstant</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeIconOverride(string)
> Returns if there is a local override for a theme icon with the specified in this node.See .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeIconOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeStyleboxOverride(string)
> Returns if there is a local override for a theme with the specified in this node.See .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeStyleboxOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeFontOverride(string)
> Returns if there is a local override for a theme with the specified in this node.See .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeFontOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeFontSizeOverride(string)
> Returns if there is a local override for a theme font size with the specified in this node.See .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeFontSizeOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeColorOverride(string)
> Returns if there is a local override for a theme with the specified in this node.See .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeColorOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeConstantOverride(string)
> Returns if there is a local override for a theme constant with the specified in this node.See .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeConstantOverride</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeIcon(string,string)
> Returns if there is a matching in the tree that has an icon item with the specified and .See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeIcon</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeStylebox(string,string)
> Returns if there is a matching in the tree that has a stylebox item with the specified and .See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeStylebox</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeFont(string,string)
> Returns if there is a matching in the tree that has a font item with the specified and .See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeFont</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeFontSize(string,string)
> Returns if there is a matching in the tree that has a font size item with the specified and .See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeFontSize</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeColor(string,string)
> Returns if there is a matching in the tree that has a color item with the specified and .See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeColor</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HasThemeConstant(string,string)
> Returns if there is a matching in the tree that has a constant item with the specified and .See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HasThemeConstant</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>themeType</span>: <span class='kt'>string</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>themeType</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetThemeDefaultBaseScale
> Returns the default base scale value from the first matching in the tree if that has a valid value.See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetThemeDefaultBaseScale</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### GetThemeDefaultFont
> Returns the default font from the first matching in the tree if that has a valid value.See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetThemeDefaultFont</span>() -> <span class='kt'>Font</span>
</pre>
</div>
</div>

### GetThemeDefaultFontSize
> Returns the default font size value from the first matching in the tree if that has a valid value.See for details.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetThemeDefaultFontSize</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### GetParentControl
> Returns the parent control node.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetParentControl</span>() -> <span class='kt'>Control</span>
</pre>
</div>
</div>

### SetHGrowDirection(GrowDirection)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetHGrowDirection</span>(<span class='o'>direction</span>: <span class='kt'>GrowDirection</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>GrowDirection</span> {:/} | {::nomarkdown} <span class='o'>direction</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetHGrowDirection
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetHGrowDirection</span>() -> <span class='kt'>GrowDirection</span>
</pre>
</div>
</div>

### SetVGrowDirection(GrowDirection)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetVGrowDirection</span>(<span class='o'>direction</span>: <span class='kt'>GrowDirection</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>GrowDirection</span> {:/} | {::nomarkdown} <span class='o'>direction</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetVGrowDirection
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetVGrowDirection</span>() -> <span class='kt'>GrowDirection</span>
</pre>
</div>
</div>

### SetTooltipAutoTranslateMode(AutoTranslateModeEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetTooltipAutoTranslateMode</span>(<span class='o'>mode</span>: <span class='kt'>AutoTranslateModeEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>AutoTranslateModeEnum</span> {:/} | {::nomarkdown} <span class='o'>mode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetTooltipAutoTranslateMode
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTooltipAutoTranslateMode</span>() -> <span class='kt'>AutoTranslateModeEnum</span>
</pre>
</div>
</div>

### SetTooltipText(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetTooltipText</span>(<span class='o'>hint</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>hint</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetTooltipText
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTooltipText</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### GetTooltip(Nullable__Vector2)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTooltip</span>(<span class='o'>atPosition</span>: <span class='kt'>Nullable__Vector2</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Nullable__Vector2</span> {:/} | {::nomarkdown} <span class='o'>atPosition</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetDefaultCursorShape(CursorShape)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetDefaultCursorShape</span>(<span class='o'>shape</span>: <span class='kt'>CursorShape</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>CursorShape</span> {:/} | {::nomarkdown} <span class='o'>shape</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetDefaultCursorShape
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetDefaultCursorShape</span>() -> <span class='kt'>CursorShape</span>
</pre>
</div>
</div>

### GetCursorShape(Nullable__Vector2)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetCursorShape</span>(<span class='o'>position</span>: <span class='kt'>Nullable__Vector2</span>) -> <span class='kt'>CursorShape</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Nullable__Vector2</span> {:/} | {::nomarkdown} <span class='o'>position</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetFocusNeighbor(Side,string)
> Sets the focus neighbor for the specified to the at node path. A setter method for , , and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetFocusNeighbor</span>(<span class='o'>side</span>: <span class='kt'>Side</span>,<span class='o'>neighbor</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Side</span> {:/} | {::nomarkdown} <span class='o'>side</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>neighbor</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetFocusNeighbor(Side)
> Returns the focus neighbor for the specified . A getter method for , , and .Note: To find the next on the specific , even if a neighbor is not assigned, use .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetFocusNeighbor</span>(<span class='o'>side</span>: <span class='kt'>Side</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Side</span> {:/} | {::nomarkdown} <span class='o'>side</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetFocusNext(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetFocusNext</span>(<span class='o'>next</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>next</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetFocusNext
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetFocusNext</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### SetFocusPrevious(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetFocusPrevious</span>(<span class='o'>previous</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>previous</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetFocusPrevious
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetFocusPrevious</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### ForceDrag(Variant,Control)
> Forces drag and bypasses and by passing and . Drag will start even if the mouse is neither over nor pressed on this control.The methods and must be implemented on controls that want to receive drop data.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ForceDrag</span>(<span class='o'>data</span>: <span class='kt'>Variant</span>,<span class='o'>preview</span>: <span class='kt'>Control</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>data</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Control</span> {:/} | {::nomarkdown} <span class='o'>preview</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AccessibilityDrag
> Starts drag-and-drop operation without using a mouse.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AccessibilityDrag</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### AccessibilityDrop
> Ends drag-and-drop operation without using a mouse.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AccessibilityDrop</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### SetAccessibilityName(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAccessibilityName</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetAccessibilityName
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetAccessibilityName</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### SetAccessibilityDescription(string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAccessibilityDescription</span>(<span class='o'>description</span>: <span class='kt'>string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>description</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetAccessibilityDescription
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetAccessibilityDescription</span>() -> <span class='kt'>string</span>
</pre>
</div>
</div>

### SetAccessibilityLive(AccessibilityLiveMode)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAccessibilityLive</span>(<span class='o'>mode</span>: <span class='kt'>AccessibilityLiveMode</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>AccessibilityLiveMode</span> {:/} | {::nomarkdown} <span class='o'>mode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetAccessibilityLive
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetAccessibilityLive</span>() -> <span class='kt'>AccessibilityLiveMode</span>
</pre>
</div>
</div>

### SetAccessibilityControlsNodes(Array__string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAccessibilityControlsNodes</span>(<span class='o'>nodePath</span>: <span class='kt'>Array__string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Array__string</span> {:/} | {::nomarkdown} <span class='o'>nodePath</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetAccessibilityControlsNodes
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetAccessibilityControlsNodes</span>() -> <span class='kt'>Array__string</span>
</pre>
</div>
</div>

### SetAccessibilityDescribedByNodes(Array__string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAccessibilityDescribedByNodes</span>(<span class='o'>nodePath</span>: <span class='kt'>Array__string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Array__string</span> {:/} | {::nomarkdown} <span class='o'>nodePath</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetAccessibilityDescribedByNodes
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetAccessibilityDescribedByNodes</span>() -> <span class='kt'>Array__string</span>
</pre>
</div>
</div>

### SetAccessibilityLabeledByNodes(Array__string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAccessibilityLabeledByNodes</span>(<span class='o'>nodePath</span>: <span class='kt'>Array__string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Array__string</span> {:/} | {::nomarkdown} <span class='o'>nodePath</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetAccessibilityLabeledByNodes
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetAccessibilityLabeledByNodes</span>() -> <span class='kt'>Array__string</span>
</pre>
</div>
</div>

### SetAccessibilityFlowToNodes(Array__string)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAccessibilityFlowToNodes</span>(<span class='o'>nodePath</span>: <span class='kt'>Array__string</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Array__string</span> {:/} | {::nomarkdown} <span class='o'>nodePath</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetAccessibilityFlowToNodes
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetAccessibilityFlowToNodes</span>() -> <span class='kt'>Array__string</span>
</pre>
</div>
</div>

### SetMouseFilter(MouseFilterEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetMouseFilter</span>(<span class='o'>filter</span>: <span class='kt'>MouseFilterEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>MouseFilterEnum</span> {:/} | {::nomarkdown} <span class='o'>filter</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetMouseFilter
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetMouseFilter</span>() -> <span class='kt'>MouseFilterEnum</span>
</pre>
</div>
</div>

### GetMouseFilterWithOverride
> Returns the , but takes the into account. If is set to , or it is set to and its ancestor is set to , then this returns .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetMouseFilterWithOverride</span>() -> <span class='kt'>MouseFilterEnum</span>
</pre>
</div>
</div>

### SetMouseBehaviorRecursive(MouseBehaviorRecursiveEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetMouseBehaviorRecursive</span>(<span class='o'>mouseBehaviorRecursive</span>: <span class='kt'>MouseBehaviorRecursiveEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>MouseBehaviorRecursiveEnum</span> {:/} | {::nomarkdown} <span class='o'>mouseBehaviorRecursive</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetMouseBehaviorRecursive
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetMouseBehaviorRecursive</span>() -> <span class='kt'>MouseBehaviorRecursiveEnum</span>
</pre>
</div>
</div>

### SetForcePassScrollEvents(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetForcePassScrollEvents</span>(<span class='o'>forcePassScrollEvents</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>forcePassScrollEvents</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsForcePassScrollEvents
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsForcePassScrollEvents</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetClipContents(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetClipContents</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsClippingContents
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsClippingContents</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### GrabClickFocus
> Creates an that attempts to click the control. If the event is received, the control gains focus. public override void _Process(double delta) { GrabClickFocus(); // When clicking another Control node, this node will be clicked instead. }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GrabClickFocus</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### SetDragForwarding(Callable,Callable,Callable)
> Sets the given callables to be used instead of the control's own drag-and-drop virtual methods. If a callable is empty, its respective virtual method is used as normal.The arguments for each callable should be exactly the same as their respective virtual methods, which would be:- corresponds to and requires a ;- corresponds to and requires both a and a ;- corresponds to and requires both a and a .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetDragForwarding</span>(<span class='o'>dragFunc</span>: <span class='kt'>Callable</span>,<span class='o'>canDropFunc</span>: <span class='kt'>Callable</span>,<span class='o'>dropFunc</span>: <span class='kt'>Callable</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Callable</span> {:/} | {::nomarkdown} <span class='o'>dragFunc</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Callable</span> {:/} | {::nomarkdown} <span class='o'>canDropFunc</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Callable</span> {:/} | {::nomarkdown} <span class='o'>dropFunc</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetDragPreview(Control)
> Shows the given control at the mouse pointer. A good time to call this method is in . The control must not be in the scene tree. You should not free the control, and you should not keep a reference to the control beyond the duration of the drag. It will be deleted automatically after the drag has ended. [Export] private Color _color = new Color(1, 0, 0, 1); public override Variant _GetDragData(Vector2 atPosition) { // Use a control that is not in the tree var cpb = new ColorPickerButton(); cpb.Color = _color; cpb.Size = new Vector2(50, 50); SetDragPreview(cpb); return _color; }
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetDragPreview</span>(<span class='o'>control</span>: <span class='kt'>Control</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Control</span> {:/} | {::nomarkdown} <span class='o'>control</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsDragSuccessful
> Returns if a drag operation is successful. Alternative to .Best used with .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsDragSuccessful</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### WarpMouse(Vector2)
> Moves the mouse cursor to , relative to of this .Note: is only supported on Windows, macOS and Linux. It has no effect on Android, iOS and Web.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>WarpMouse</span>(<span class='o'>position</span>: <span class='kt'>Vector2</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>position</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetShortcutContext(Node)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetShortcutContext</span>(<span class='o'>node</span>: <span class='kt'>Node</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Node</span> {:/} | {::nomarkdown} <span class='o'>node</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetShortcutContext
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetShortcutContext</span>() -> <span class='kt'>Node</span>
</pre>
</div>
</div>

### UpdateMinimumSize
> Invalidates the size cache in this node and in parent nodes up to top level. Intended to be used with when the return value is changed. Setting directly calls this method automatically.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>UpdateMinimumSize</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### SetLayoutDirection(LayoutDirectionEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetLayoutDirection</span>(<span class='o'>direction</span>: <span class='kt'>LayoutDirectionEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>LayoutDirectionEnum</span> {:/} | {::nomarkdown} <span class='o'>direction</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetLayoutDirection
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetLayoutDirection</span>() -> <span class='kt'>LayoutDirectionEnum</span>
</pre>
</div>
</div>

### IsLayoutRtl
> Returns if the layout is right-to-left. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsLayoutRtl</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetAutoTranslate(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAutoTranslate</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsAutoTranslating
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsAutoTranslating</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetLocalizeNumeralSystem(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetLocalizeNumeralSystem</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsLocalizingNumeralSystem
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsLocalizingNumeralSystem</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### _Draw
> Called when has been requested to redraw (after is called, either manually or by the engine).Corresponds to the notification in .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_Draw</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### GetCanvasItem
> Returns the internal canvas item used by the for this node.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetCanvasItem</span>() -> <span class='kt'>Rid</span>
</pre>
</div>
</div>

### SetVisible(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetVisible</span>(<span class='o'>visible</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>visible</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsVisible
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsVisible</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### IsVisibleInTree
> Returns if the node is present in the , its property is and all its ancestors are also visible. If any ancestor is hidden, this node will not be visible in the scene tree, and is therefore not drawn (see ).Visibility is checked only in parent nodes that inherit from , , and . If the parent is of any other type (such as , , or ), it is assumed to be visible.Note: This method does not take into account, so even if this method returns , the node might end up not being rendered.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsVisibleInTree</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### Show
> Show the if it's currently hidden. This is equivalent to setting to .Note: For controls that inherit , the correct way to make them visible is to call one of the multiple popup*() functions instead.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Show</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Hide
> Hide the if it's currently visible. This is equivalent to setting to .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Hide</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### QueueRedraw
> Queues the to redraw. During idle time, if is visible, is sent and is called. This only occurs once per frame, even if this method has been called multiple times.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>QueueRedraw</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### MoveToFront
> Moves this node below its siblings, usually causing the node to draw on top of its siblings. Does nothing if this node does not have a parent. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>MoveToFront</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### SetAsTopLevel(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetAsTopLevel</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsSetAsTopLevel
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsSetAsTopLevel</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetLightMask(number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetLightMask</span>(<span class='o'>lightMask</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>lightMask</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetLightMask
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetLightMask</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### SetModulate(Color)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetModulate</span>(<span class='o'>modulate</span>: <span class='kt'>Color</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetModulate
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetModulate</span>() -> <span class='kt'>Color</span>
</pre>
</div>
</div>

### SetSelfModulate(Color)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetSelfModulate</span>(<span class='o'>selfModulate</span>: <span class='kt'>Color</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>selfModulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetSelfModulate
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetSelfModulate</span>() -> <span class='kt'>Color</span>
</pre>
</div>
</div>

### SetZIndex(number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetZIndex</span>(<span class='o'>zIndex</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>zIndex</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetZIndex
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetZIndex</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### SetZAsRelative(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetZAsRelative</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsZRelative
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsZRelative</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetYSortEnabled(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetYSortEnabled</span>(<span class='o'>enabled</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enabled</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsYSortEnabled
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsYSortEnabled</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetDrawBehindParent(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetDrawBehindParent</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsDrawBehindParentEnabled
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsDrawBehindParentEnabled</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### DrawLine(Vector2,Vector2,Color,number,boolean)
> Draws a line from a 2D point to another, with a given color and width. It can be optionally antialiased. See also , , and .If is negative, then a two-point primitive will be drawn instead of a four-point one. This means that when the CanvasItem is scaled, the line will remain thin. If this behavior is not desired, then pass a positive like 1.0.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawLine</span>(<span class='o'>from</span>: <span class='kt'>Vector2</span>,<span class='o'>to</span>: <span class='kt'>Vector2</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>antialiased</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>from</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawDashedLine(Vector2,Vector2,Color,number,number,boolean,boolean)
> Draws a dashed line from a 2D point to another, with a given color and width. See also , , and .If is negative, then a two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the line parts will remain thin. If this behavior is not desired, then pass a positive like 1.0. is the length of each dash in pixels, with the gap between each dash being the same length. If is , the length of the first and last dashes may be shortened or lengthened to allow the line to begin and end at the precise points defined by and . Both ends are always symmetrical when is . If is , all dashes will have the same length, but the line may appear incomplete at the end due to the dash length not dividing evenly into the line length. Only full dashes are drawn when is .If is , half transparent "feathers" will be attached to the boundary, making outlines smooth.Note: is only effective if is greater than 0.0.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawDashedLine</span>(<span class='o'>from</span>: <span class='kt'>Vector2</span>,<span class='o'>to</span>: <span class='kt'>Vector2</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>dash</span>: <span class='kt'>number</span> = 2,<span class='o'>aligned</span>: <span class='kt'>boolean</span> = True,<span class='o'>antialiased</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>from</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>dash</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>aligned</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawPolyline(Vector2[],Color,number,boolean)
> Draws interconnected line segments with a uniform and and optional antialiasing (supported only for positive ). When drawing large amounts of lines, this is faster than using individual calls. To draw disconnected lines, use instead. See also .If is negative, it will be ignored and the polyline will be drawn using . This means that when the CanvasItem is scaled, the polyline will remain thin. If this behavior is not desired, then pass a positive like 1.0.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawPolyline</span>(<span class='o'>points</span>: <span class='kt'>Vector2[]</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>antialiased</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawPolyline(ReadOnlySpan__Vector2,Color,number,boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawPolyline</span>(<span class='o'>points</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>width</span>: <span class='kt'>number</span>,<span class='o'>antialiased</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawPolylineColors(Vector2[],Color[],number,boolean)
> Draws interconnected line segments with a uniform , point-by-point coloring, and optional antialiasing (supported only for positive ). Colors assigned to line points match by index between and , i.e. each line segment is filled with a gradient between the colors of the endpoints. When drawing large amounts of lines, this is faster than using individual calls. To draw disconnected lines, use instead. See also .If is negative, it will be ignored and the polyline will be drawn using . This means that when the CanvasItem is scaled, the polyline will remain thin. If this behavior is not desired, then pass a positive like 1.0.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawPolylineColors</span>(<span class='o'>points</span>: <span class='kt'>Vector2[]</span>,<span class='o'>colors</span>: <span class='kt'>Color[]</span>,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>antialiased</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color[]</span> {:/} | {::nomarkdown} <span class='o'>colors</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawPolylineColors(ReadOnlySpan__Vector2,ReadOnlySpan__Color,number,boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawPolylineColors</span>(<span class='o'>points</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>colors</span>: <span class='kt'>ReadOnlySpan__Color</span>,<span class='o'>width</span>: <span class='kt'>number</span>,<span class='o'>antialiased</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Color</span> {:/} | {::nomarkdown} <span class='o'>colors</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawArc(Vector2,number,number,number,number,Color,number,boolean)
> Draws an unfilled arc between the given angles with a uniform and and optional antialiasing (supported only for positive ). The larger the value of , the smoother the curve. See also .If is negative, it will be ignored and the arc will be drawn using . This means that when the CanvasItem is scaled, the arc will remain thin. If this behavior is not desired, then pass a positive like 1.0.The arc is drawn from towards the value of so in clockwise direction if start_angle < end_angle and counter-clockwise otherwise. Passing the same angles but in reversed order will produce the same arc. If absolute difference of and is greater than @GDScript.TAU radians, then a full circle arc is drawn (i.e. arc will not overlap itself).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawArc</span>(<span class='o'>center</span>: <span class='kt'>Vector2</span>,<span class='o'>radius</span>: <span class='kt'>number</span>,<span class='o'>startAngle</span>: <span class='kt'>number</span>,<span class='o'>endAngle</span>: <span class='kt'>number</span>,<span class='o'>pointCount</span>: <span class='kt'>number</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>antialiased</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>center</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>radius</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>startAngle</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>endAngle</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>pointCount</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultiline(Vector2[],Color,number,boolean)
> Draws multiple disconnected lines with a uniform and . Each line is defined by two consecutive points from array, i.e. i-th segment consists of points[2 * i], points[2 * i + 1] endpoints. When drawing large amounts of lines, this is faster than using individual calls. To draw interconnected lines, use instead.If is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive like 1.0.Note: is only effective if is greater than 0.0.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultiline</span>(<span class='o'>points</span>: <span class='kt'>Vector2[]</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>antialiased</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultiline(ReadOnlySpan__Vector2,Color,number,boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultiline</span>(<span class='o'>points</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>width</span>: <span class='kt'>number</span>,<span class='o'>antialiased</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultilineColors(Vector2[],Color[],number,boolean)
> Draws multiple disconnected lines with a uniform and segment-by-segment coloring. Each segment is defined by two consecutive points from array and a corresponding color from array, i.e. i-th segment consists of points[2 * i], points[2 * i + 1] endpoints and has colors[i] color. When drawing large amounts of lines, this is faster than using individual calls. To draw interconnected lines, use instead.If is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive like 1.0.Note: is only effective if is greater than 0.0.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultilineColors</span>(<span class='o'>points</span>: <span class='kt'>Vector2[]</span>,<span class='o'>colors</span>: <span class='kt'>Color[]</span>,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>antialiased</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color[]</span> {:/} | {::nomarkdown} <span class='o'>colors</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultilineColors(ReadOnlySpan__Vector2,ReadOnlySpan__Color,number,boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultilineColors</span>(<span class='o'>points</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>colors</span>: <span class='kt'>ReadOnlySpan__Color</span>,<span class='o'>width</span>: <span class='kt'>number</span>,<span class='o'>antialiased</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Color</span> {:/} | {::nomarkdown} <span class='o'>colors</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawRect(Rect2,Color,boolean,number,boolean)
> Draws a rectangle. If is , the rectangle will be filled with the specified. If is , the rectangle will be drawn as a stroke with the and specified. See also .If is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive like 1.0.If is , half transparent "feathers" will be attached to the boundary, making outlines smooth.Note: is only effective if is .Note: Unfilled rectangles drawn with a negative may not display perfectly. For example, corners may be missing or brighter due to overlapping lines (for a translucent ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawRect</span>(<span class='o'>rect</span>: <span class='kt'>Rect2</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>filled</span>: <span class='kt'>boolean</span> = True,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>antialiased</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Rect2</span> {:/} | {::nomarkdown} <span class='o'>rect</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>filled</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawCircle(Vector2,number,Color,boolean,number,boolean)
> Draws a circle. See also , , and .If is , the circle will be filled with the specified. If is , the circle will be drawn as a stroke with the and specified.If is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive like 1.0.If is , half transparent "feathers" will be attached to the boundary, making outlines smooth.Note: is only effective if is .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawCircle</span>(<span class='o'>position</span>: <span class='kt'>Vector2</span>,<span class='o'>radius</span>: <span class='kt'>number</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>filled</span>: <span class='kt'>boolean</span> = True,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>antialiased</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>position</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>radius</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>filled</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>antialiased</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawTexture(Texture2D,Vector2,Nullable__Color)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawTexture</span>(<span class='o'>texture</span>: <span class='kt'>Texture2D</span>,<span class='o'>position</span>: <span class='kt'>Vector2</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>position</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawTextureRect(Texture2D,Rect2,boolean,Nullable__Color,boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawTextureRect</span>(<span class='o'>texture</span>: <span class='kt'>Texture2D</span>,<span class='o'>rect</span>: <span class='kt'>Rect2</span>,<span class='o'>tile</span>: <span class='kt'>boolean</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>transpose</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Rect2</span> {:/} | {::nomarkdown} <span class='o'>rect</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>tile</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>transpose</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawTextureRectRegion(Texture2D,Rect2,Rect2,Nullable__Color,boolean,boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawTextureRectRegion</span>(<span class='o'>texture</span>: <span class='kt'>Texture2D</span>,<span class='o'>rect</span>: <span class='kt'>Rect2</span>,<span class='o'>srcRect</span>: <span class='kt'>Rect2</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>transpose</span>: <span class='kt'>boolean</span> = False,<span class='o'>clipUV</span>: <span class='kt'>boolean</span> = True) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Rect2</span> {:/} | {::nomarkdown} <span class='o'>rect</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Rect2</span> {:/} | {::nomarkdown} <span class='o'>srcRect</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>transpose</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>clipUV</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMsdfTextureRectRegion(Texture2D,Rect2,Rect2,Nullable__Color,number,number,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMsdfTextureRectRegion</span>(<span class='o'>texture</span>: <span class='kt'>Texture2D</span>,<span class='o'>rect</span>: <span class='kt'>Rect2</span>,<span class='o'>srcRect</span>: <span class='kt'>Rect2</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>outline</span>: <span class='kt'>number</span> = 0,<span class='o'>pixelRange</span>: <span class='kt'>number</span> = 4,<span class='o'>scale</span>: <span class='kt'>number</span> = 1) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Rect2</span> {:/} | {::nomarkdown} <span class='o'>rect</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Rect2</span> {:/} | {::nomarkdown} <span class='o'>srcRect</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>outline</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>pixelRange</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>scale</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawLcdTextureRectRegion(Texture2D,Rect2,Rect2,Nullable__Color)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawLcdTextureRectRegion</span>(<span class='o'>texture</span>: <span class='kt'>Texture2D</span>,<span class='o'>rect</span>: <span class='kt'>Rect2</span>,<span class='o'>srcRect</span>: <span class='kt'>Rect2</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Rect2</span> {:/} | {::nomarkdown} <span class='o'>rect</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Rect2</span> {:/} | {::nomarkdown} <span class='o'>srcRect</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawStyleBox(StyleBox,Rect2)
> Draws a styled rectangle.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawStyleBox</span>(<span class='o'>styleBox</span>: <span class='kt'>StyleBox</span>,<span class='o'>rect</span>: <span class='kt'>Rect2</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>StyleBox</span> {:/} | {::nomarkdown} <span class='o'>styleBox</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Rect2</span> {:/} | {::nomarkdown} <span class='o'>rect</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawPrimitive(Vector2[],Color[],Vector2[],Texture2D)
> Draws a custom primitive. 1 point for a point, 2 points for a line, 3 points for a triangle, and 4 points for a quad. If 0 points or more than 4 points are specified, nothing will be drawn and an error message will be printed. See also , , , and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawPrimitive</span>(<span class='o'>points</span>: <span class='kt'>Vector2[]</span>,<span class='o'>colors</span>: <span class='kt'>Color[]</span>,<span class='o'>uvs</span>: <span class='kt'>Vector2[]</span>,<span class='o'>texture</span>: <span class='kt'>Texture2D</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color[]</span> {:/} | {::nomarkdown} <span class='o'>colors</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>uvs</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawPrimitive(ReadOnlySpan__Vector2,ReadOnlySpan__Color,ReadOnlySpan__Vector2,Texture2D)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawPrimitive</span>(<span class='o'>points</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>colors</span>: <span class='kt'>ReadOnlySpan__Color</span>,<span class='o'>uvs</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>texture</span>: <span class='kt'>Texture2D</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Color</span> {:/} | {::nomarkdown} <span class='o'>colors</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>uvs</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawPolygon(Vector2[],Color[],Vector2[],Texture2D)
> Draws a solid polygon of any number of points, convex or concave. Unlike , each point's color can be changed individually. See also and . If you need more flexibility (such as being able to use bones), use instead.Note: If you frequently redraw the same polygon with a large number of vertices, consider pre-calculating the triangulation with and using , , or .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawPolygon</span>(<span class='o'>points</span>: <span class='kt'>Vector2[]</span>,<span class='o'>colors</span>: <span class='kt'>Color[]</span>,<span class='o'>uvs</span>: <span class='kt'>Vector2[]</span>,<span class='o'>texture</span>: <span class='kt'>Texture2D</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color[]</span> {:/} | {::nomarkdown} <span class='o'>colors</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>uvs</span> {:/} | {::nomarkdown} <span class='c'>If the parameter is null, then the default value is Array.Empty<Vector2>().</span> {:/} |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawPolygon(ReadOnlySpan__Vector2,ReadOnlySpan__Color,ReadOnlySpan__Vector2,Texture2D)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawPolygon</span>(<span class='o'>points</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>colors</span>: <span class='kt'>ReadOnlySpan__Color</span>,<span class='o'>uvs</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>texture</span>: <span class='kt'>Texture2D</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Color</span> {:/} | {::nomarkdown} <span class='o'>colors</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>uvs</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawColoredPolygon(Vector2[],Color,Vector2[],Texture2D)
> Draws a colored polygon of any number of points, convex or concave. Unlike , a single color must be specified for the whole polygon.Note: If you frequently redraw the same polygon with a large number of vertices, consider pre-calculating the triangulation with and using , , or .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawColoredPolygon</span>(<span class='o'>points</span>: <span class='kt'>Vector2[]</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>uvs</span>: <span class='kt'>Vector2[]</span>,<span class='o'>texture</span>: <span class='kt'>Texture2D</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>uvs</span> {:/} | {::nomarkdown} <span class='c'>If the parameter is null, then the default value is Array.Empty<Vector2>().</span> {:/} |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawColoredPolygon(ReadOnlySpan__Vector2,Color,ReadOnlySpan__Vector2,Texture2D)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawColoredPolygon</span>(<span class='o'>points</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>uvs</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>texture</span>: <span class='kt'>Texture2D</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>uvs</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawString(Font,Vector2,string,HorizontalAlignment,number,number,Nullable__Color,JustificationFlag,Direction,Orientation,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawString</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>text</span>: <span class='kt'>string</span>,<span class='o'>alignment</span>: <span class='kt'>HorizontalAlignment</span> = Left,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>fontSize</span>: <span class='kt'>number</span> = 16,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>justificationFlags</span>: <span class='kt'>JustificationFlag</span> = Kashida, WordBound,<span class='o'>direction</span>: <span class='kt'>Direction</span> = Auto,<span class='o'>orientation</span>: <span class='kt'>Orientation</span> = Horizontal,<span class='o'>oversampling</span>: <span class='kt'>number</span> = 0) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>HorizontalAlignment</span> {:/} | {::nomarkdown} <span class='o'>alignment</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>JustificationFlag</span> {:/} | {::nomarkdown} <span class='o'>justificationFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Direction</span> {:/} | {::nomarkdown} <span class='o'>direction</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Orientation</span> {:/} | {::nomarkdown} <span class='o'>orientation</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>oversampling</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultilineString(Font,Vector2,string,HorizontalAlignment,number,number,number,Nullable__Color,LineBreakFlag,JustificationFlag,Direction,Orientation,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultilineString</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>text</span>: <span class='kt'>string</span>,<span class='o'>alignment</span>: <span class='kt'>HorizontalAlignment</span> = Left,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>fontSize</span>: <span class='kt'>number</span> = 16,<span class='o'>maxLines</span>: <span class='kt'>number</span> = -1,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>brkFlags</span>: <span class='kt'>LineBreakFlag</span> = Mandatory, WordBound,<span class='o'>justificationFlags</span>: <span class='kt'>JustificationFlag</span> = Kashida, WordBound,<span class='o'>direction</span>: <span class='kt'>Direction</span> = Auto,<span class='o'>orientation</span>: <span class='kt'>Orientation</span> = Horizontal,<span class='o'>oversampling</span>: <span class='kt'>number</span> = 0) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>HorizontalAlignment</span> {:/} | {::nomarkdown} <span class='o'>alignment</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>maxLines</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>LineBreakFlag</span> {:/} | {::nomarkdown} <span class='o'>brkFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>JustificationFlag</span> {:/} | {::nomarkdown} <span class='o'>justificationFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Direction</span> {:/} | {::nomarkdown} <span class='o'>direction</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Orientation</span> {:/} | {::nomarkdown} <span class='o'>orientation</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>oversampling</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawStringOutline(Font,Vector2,string,HorizontalAlignment,number,number,number,Nullable__Color,JustificationFlag,Direction,Orientation,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawStringOutline</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>text</span>: <span class='kt'>string</span>,<span class='o'>alignment</span>: <span class='kt'>HorizontalAlignment</span> = Left,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>fontSize</span>: <span class='kt'>number</span> = 16,<span class='o'>size</span>: <span class='kt'>number</span> = 1,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>justificationFlags</span>: <span class='kt'>JustificationFlag</span> = Kashida, WordBound,<span class='o'>direction</span>: <span class='kt'>Direction</span> = Auto,<span class='o'>orientation</span>: <span class='kt'>Orientation</span> = Horizontal,<span class='o'>oversampling</span>: <span class='kt'>number</span> = 0) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>HorizontalAlignment</span> {:/} | {::nomarkdown} <span class='o'>alignment</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>size</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>JustificationFlag</span> {:/} | {::nomarkdown} <span class='o'>justificationFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Direction</span> {:/} | {::nomarkdown} <span class='o'>direction</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Orientation</span> {:/} | {::nomarkdown} <span class='o'>orientation</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>oversampling</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultilineStringOutline(Font,Vector2,string,HorizontalAlignment,number,number,number,number,Nullable__Color,LineBreakFlag,JustificationFlag,Direction,Orientation,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultilineStringOutline</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>text</span>: <span class='kt'>string</span>,<span class='o'>alignment</span>: <span class='kt'>HorizontalAlignment</span> = Left,<span class='o'>width</span>: <span class='kt'>number</span> = -1,<span class='o'>fontSize</span>: <span class='kt'>number</span> = 16,<span class='o'>maxLines</span>: <span class='kt'>number</span> = -1,<span class='o'>size</span>: <span class='kt'>number</span> = 1,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>brkFlags</span>: <span class='kt'>LineBreakFlag</span> = Mandatory, WordBound,<span class='o'>justificationFlags</span>: <span class='kt'>JustificationFlag</span> = Kashida, WordBound,<span class='o'>direction</span>: <span class='kt'>Direction</span> = Auto,<span class='o'>orientation</span>: <span class='kt'>Orientation</span> = Horizontal,<span class='o'>oversampling</span>: <span class='kt'>number</span> = 0) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>HorizontalAlignment</span> {:/} | {::nomarkdown} <span class='o'>alignment</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>maxLines</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>size</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>LineBreakFlag</span> {:/} | {::nomarkdown} <span class='o'>brkFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>JustificationFlag</span> {:/} | {::nomarkdown} <span class='o'>justificationFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Direction</span> {:/} | {::nomarkdown} <span class='o'>direction</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Orientation</span> {:/} | {::nomarkdown} <span class='o'>orientation</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>oversampling</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawChar(Font,Vector2,string,number,Nullable__Color,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawChar</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>char</span>: <span class='kt'>string</span>,<span class='o'>fontSize</span>: <span class='kt'>number</span> = 16,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>oversampling</span>: <span class='kt'>number</span> = 0) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>char</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>oversampling</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawCharOutline(Font,Vector2,string,number,number,Nullable__Color,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawCharOutline</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>char</span>: <span class='kt'>string</span>,<span class='o'>fontSize</span>: <span class='kt'>number</span> = 16,<span class='o'>size</span>: <span class='kt'>number</span> = -1,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>oversampling</span>: <span class='kt'>number</span> = 0) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>char</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>size</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>oversampling</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMesh(Mesh,Texture2D,Nullable__Transform2D,Nullable__Color)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMesh</span>(<span class='o'>mesh</span>: <span class='kt'>Mesh</span>,<span class='o'>texture</span>: <span class='kt'>Texture2D</span>,<span class='o'>transform</span>: <span class='kt'>Nullable__Transform2D</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Mesh</span> {:/} | {::nomarkdown} <span class='o'>mesh</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Transform2D</span> {:/} | {::nomarkdown} <span class='o'>transform</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultimesh(MultiMesh,Texture2D)
> Draws a in 2D with the provided texture. See for related documentation.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultimesh</span>(<span class='o'>multimesh</span>: <span class='kt'>MultiMesh</span>,<span class='o'>texture</span>: <span class='kt'>Texture2D</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>MultiMesh</span> {:/} | {::nomarkdown} <span class='o'>multimesh</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Texture2D</span> {:/} | {::nomarkdown} <span class='o'>texture</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawSetTransform(Vector2,number,Nullable__Vector2)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawSetTransform</span>(<span class='o'>position</span>: <span class='kt'>Vector2</span>,<span class='o'>rotation</span>: <span class='kt'>number</span> = 0,<span class='o'>scale</span>: <span class='kt'>Nullable__Vector2</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>position</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>rotation</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Vector2</span> {:/} | {::nomarkdown} <span class='o'>scale</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawSetTransformMatrix(Transform2D)
> Sets a custom transform for drawing via matrix. Anything drawn afterwards will be transformed by this.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawSetTransformMatrix</span>(<span class='o'>xform</span>: <span class='kt'>Transform2D</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Transform2D</span> {:/} | {::nomarkdown} <span class='o'>xform</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawAnimationSlice(number,number,number,number)
> Subsequent drawing commands will be ignored unless they fall within the specified animation slice. This is a faster way to implement animations that loop on background rather than redrawing constantly.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawAnimationSlice</span>(<span class='o'>animationLength</span>: <span class='kt'>number</span>,<span class='o'>sliceBegin</span>: <span class='kt'>number</span>,<span class='o'>sliceEnd</span>: <span class='kt'>number</span>,<span class='o'>offset</span>: <span class='kt'>number</span> = 0) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>animationLength</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>sliceBegin</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>sliceEnd</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>offset</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawEndAnimation
> After submitting all animations slices via , this function can be used to revert drawing to its default state (all subsequent drawing commands will be visible). If you don't care about this particular use case, usage of this function after submitting the slices is not required.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawEndAnimation</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### GetTransform
> Returns the transform matrix of this .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTransform</span>() -> <span class='kt'>Transform2D</span>
</pre>
</div>
</div>

### GetGlobalTransform
> Returns the global transform matrix of this item, i.e. the combined transform up to the topmost node. The topmost item is a that either has no parent, has non- parent or it has enabled.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetGlobalTransform</span>() -> <span class='kt'>Transform2D</span>
</pre>
</div>
</div>

### GetGlobalTransformWithCanvas
> Returns the transform from the local coordinate system of this to the s coordinate system.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetGlobalTransformWithCanvas</span>() -> <span class='kt'>Transform2D</span>
</pre>
</div>
</div>

### GetViewportTransform
> Returns the transform of this node, converted from its registered canvas's coordinate system to its viewport embedder's coordinate system. See also and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetViewportTransform</span>() -> <span class='kt'>Transform2D</span>
</pre>
</div>
</div>

### GetViewportRect
> Returns this node's viewport boundaries as a . See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetViewportRect</span>() -> <span class='kt'>Rect2</span>
</pre>
</div>
</div>

### GetCanvasTransform
> Returns the transform of this node, converted from its registered canvas's coordinate system to its viewport's coordinate system. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetCanvasTransform</span>() -> <span class='kt'>Transform2D</span>
</pre>
</div>
</div>

### GetScreenTransform
> Returns the transform of this in global screen coordinates (i.e. taking window position into account). Mostly useful for editor plugins.Equals to if the window is embedded (see ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetScreenTransform</span>() -> <span class='kt'>Transform2D</span>
</pre>
</div>
</div>

### GetLocalMousePosition
> Returns the mouse's position in this using the local coordinate system of this .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetLocalMousePosition</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetGlobalMousePosition
> Returns mouse cursor's global position relative to the that contains this node.Note: For screen-space coordinates (e.g. when using a non-embedded ), you can use .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetGlobalMousePosition</span>() -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

### GetCanvas
> Returns the of the canvas where this node is registered to, used by the .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetCanvas</span>() -> <span class='kt'>Rid</span>
</pre>
</div>
</div>

### GetCanvasLayerNode
> Returns the that contains this node, or if the node is not in any .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetCanvasLayerNode</span>() -> <span class='kt'>CanvasLayer</span>
</pre>
</div>
</div>

### GetWorld2D
> Returns the this node is registered to.Usually, this is the same as this node's viewport (see and ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetWorld2D</span>() -> <span class='kt'>World2D</span>
</pre>
</div>
</div>

### SetMaterial(Material)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetMaterial</span>(<span class='o'>material</span>: <span class='kt'>Material</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Material</span> {:/} | {::nomarkdown} <span class='o'>material</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetMaterial
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetMaterial</span>() -> <span class='kt'>Material</span>
</pre>
</div>
</div>

### SetInstanceShaderParameter(string,Variant)
> Set the value of a shader uniform for this instance only (per-instance uniform). See also to assign a uniform on all instances using the same .Note: For a shader uniform to be assignable on a per-instance basis, it must be defined with instance uniform ... rather than uniform ... in the shader code.Note: is case-sensitive and must match the name of the uniform in the code exactly (not the capitalized name in the inspector).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetInstanceShaderParameter</span>(<span class='o'>name</span>: <span class='kt'>string</span>,<span class='o'>value</span>: <span class='kt'>Variant</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetInstanceShaderParameter(string)
> Get the value of a shader parameter as set on this instance.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetInstanceShaderParameter</span>(<span class='o'>name</span>: <span class='kt'>string</span>) -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>name</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetUseParentMaterial(boolean)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetUseParentMaterial</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetUseParentMaterial
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetUseParentMaterial</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetNotifyLocalTransform(boolean)
> If , the node will receive whenever its local transform changes.Note: Many canvas items such as or automatically enable this in order to function correctly.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetNotifyLocalTransform</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsLocalTransformNotificationEnabled
> Returns if the node receives whenever its local transform changes. This is enabled with .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsLocalTransformNotificationEnabled</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### SetNotifyTransform(boolean)
> If , the node will receive whenever global transform changes.Note: Many canvas items such as or automatically enable this in order to function correctly.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetNotifyTransform</span>(<span class='o'>enable</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enable</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IsTransformNotificationEnabled
> Returns if the node receives whenever its global transform changes. This is enabled with .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsTransformNotificationEnabled</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### ForceUpdateTransform
> Forces the node's transform to update. Fails if the node is not inside the tree. See also .Note: For performance reasons, transform changes are usually accumulated and applied once at the end of the frame. The update propagates through children, as well. Therefore, use this method only when you need an up-to-date transform (such as during physics operations).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ForceUpdateTransform</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### MakeCanvasPositionLocal(Vector2)
> Transforms from the viewport's coordinates to this node's local coordinates.For the opposite operation, use . var viewport_point = get_global_transform_with_canvas() * local_point
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>MakeCanvasPositionLocal</span>(<span class='o'>viewportPoint</span>: <span class='kt'>Vector2</span>) -> <span class='kt'>Vector2</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>viewportPoint</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### MakeInputLocal(InputEvent)
> Returns a copy of the given with its coordinates converted from global space to this 's local space. If not possible, returns the same unchanged.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>MakeInputLocal</span>(<span class='o'>event</span>: <span class='kt'>InputEvent</span>) -> <span class='kt'>InputEvent</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>InputEvent</span> {:/} | {::nomarkdown} <span class='o'>event</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetVisibilityLayer(UInt32)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetVisibilityLayer</span>(<span class='o'>layer</span>: <span class='kt'>UInt32</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>UInt32</span> {:/} | {::nomarkdown} <span class='o'>layer</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetVisibilityLayer
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetVisibilityLayer</span>() -> <span class='kt'>UInt32</span>
</pre>
</div>
</div>

### SetVisibilityLayerBit(UInt32,boolean)
> Set/clear individual bits on the rendering visibility layer. This simplifies editing this 's visibility layer.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetVisibilityLayerBit</span>(<span class='o'>layer</span>: <span class='kt'>UInt32</span>,<span class='o'>enabled</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>UInt32</span> {:/} | {::nomarkdown} <span class='o'>layer</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>enabled</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetVisibilityLayerBit(UInt32)
> Returns if the layer at the given index is set in .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetVisibilityLayerBit</span>(<span class='o'>layer</span>: <span class='kt'>UInt32</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>UInt32</span> {:/} | {::nomarkdown} <span class='o'>layer</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### SetTextureFilter(TextureFilterEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetTextureFilter</span>(<span class='o'>mode</span>: <span class='kt'>TextureFilterEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>TextureFilterEnum</span> {:/} | {::nomarkdown} <span class='o'>mode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetTextureFilter
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTextureFilter</span>() -> <span class='kt'>TextureFilterEnum</span>
</pre>
</div>
</div>

### SetTextureRepeat(TextureRepeatEnum)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetTextureRepeat</span>(<span class='o'>mode</span>: <span class='kt'>TextureRepeatEnum</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>TextureRepeatEnum</span> {:/} | {::nomarkdown} <span class='o'>mode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetTextureRepeat
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetTextureRepeat</span>() -> <span class='kt'>TextureRepeatEnum</span>
</pre>
</div>
</div>

### SetClipChildrenMode(ClipChildrenMode)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SetClipChildrenMode</span>(<span class='o'>mode</span>: <span class='kt'>ClipChildrenMode</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ClipChildrenMode</span> {:/} | {::nomarkdown} <span class='o'>mode</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetClipChildrenMode
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetClipChildrenMode</span>() -> <span class='kt'>ClipChildrenMode</span>
</pre>
</div>
</div>

### DrawMultilineColors(Vector2[],Color[],number)
> Draws multiple disconnected lines with a uniform and segment-by-segment coloring. Each segment is defined by two consecutive points from array and a corresponding color from array, i.e. i-th segment consists of points[2 * i], points[2 * i + 1] endpoints and has colors[i] color. When drawing large amounts of lines, this is faster than using individual calls. To draw interconnected lines, use instead.If is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive like 1.0.Note: is only effective if is greater than 0.0.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultilineColors</span>(<span class='o'>points</span>: <span class='kt'>Vector2[]</span>,<span class='o'>colors</span>: <span class='kt'>Color[]</span>,<span class='o'>width</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color[]</span> {:/} | {::nomarkdown} <span class='o'>colors</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultilineColors(ReadOnlySpan__Vector2,ReadOnlySpan__Color,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultilineColors</span>(<span class='o'>points</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>colors</span>: <span class='kt'>ReadOnlySpan__Color</span>,<span class='o'>width</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Color</span> {:/} | {::nomarkdown} <span class='o'>colors</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultiline(Vector2[],Color,number)
> Draws multiple disconnected lines with a uniform and . Each line is defined by two consecutive points from array, i.e. i-th segment consists of points[2 * i], points[2 * i + 1] endpoints. When drawing large amounts of lines, this is faster than using individual calls. To draw interconnected lines, use instead.If is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive like 1.0.Note: is only effective if is greater than 0.0.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultiline</span>(<span class='o'>points</span>: <span class='kt'>Vector2[]</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>width</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2[]</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultiline(ReadOnlySpan__Vector2,Color,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultiline</span>(<span class='o'>points</span>: <span class='kt'>ReadOnlySpan__Vector2</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>width</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ReadOnlySpan__Vector2</span> {:/} | {::nomarkdown} <span class='o'>points</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawDashedLine(Vector2,Vector2,Color,number,number,boolean)
> Draws a dashed line from a 2D point to another, with a given color and width. See also , , and .If is negative, then a two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the line parts will remain thin. If this behavior is not desired, then pass a positive like 1.0. is the length of each dash in pixels, with the gap between each dash being the same length. If is , the length of the first and last dashes may be shortened or lengthened to allow the line to begin and end at the precise points defined by and . Both ends are always symmetrical when is . If is , all dashes will have the same length, but the line may appear incomplete at the end due to the dash length not dividing evenly into the line length. Only full dashes are drawn when is .If is , half transparent "feathers" will be attached to the boundary, making outlines smooth.Note: is only effective if is greater than 0.0.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawDashedLine</span>(<span class='o'>from</span>: <span class='kt'>Vector2</span>,<span class='o'>to</span>: <span class='kt'>Vector2</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>width</span>: <span class='kt'>number</span>,<span class='o'>dash</span>: <span class='kt'>number</span>,<span class='o'>aligned</span>: <span class='kt'>boolean</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>from</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>dash</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>aligned</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawRect(Rect2,Color,boolean,number)
> Draws a rectangle. If is , the rectangle will be filled with the specified. If is , the rectangle will be drawn as a stroke with the and specified. See also .If is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive like 1.0.If is , half transparent "feathers" will be attached to the boundary, making outlines smooth.Note: is only effective if is .Note: Unfilled rectangles drawn with a negative may not display perfectly. For example, corners may be missing or brighter due to overlapping lines (for a translucent ).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawRect</span>(<span class='o'>rect</span>: <span class='kt'>Rect2</span>,<span class='o'>color</span>: <span class='kt'>Color</span>,<span class='o'>filled</span>: <span class='kt'>boolean</span>,<span class='o'>width</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Rect2</span> {:/} | {::nomarkdown} <span class='o'>rect</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>filled</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawCircle(Vector2,number,Color)
> Draws a circle. See also , , and .If is , the circle will be filled with the specified. If is , the circle will be drawn as a stroke with the and specified.If is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive like 1.0.If is , half transparent "feathers" will be attached to the boundary, making outlines smooth.Note: is only effective if is .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawCircle</span>(<span class='o'>position</span>: <span class='kt'>Vector2</span>,<span class='o'>radius</span>: <span class='kt'>number</span>,<span class='o'>color</span>: <span class='kt'>Color</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>position</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>radius</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Color</span> {:/} | {::nomarkdown} <span class='o'>color</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawCharOutline(Font,Vector2,string,number,number,Nullable__Color)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawCharOutline</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>char</span>: <span class='kt'>string</span>,<span class='o'>fontSize</span>: <span class='kt'>number</span>,<span class='o'>size</span>: <span class='kt'>number</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>char</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>size</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawChar(Font,Vector2,string,number,Nullable__Color)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawChar</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>char</span>: <span class='kt'>string</span>,<span class='o'>fontSize</span>: <span class='kt'>number</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>char</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultilineStringOutline(Font,Vector2,string,HorizontalAlignment,number,number,number,number,Nullable__Color,LineBreakFlag,JustificationFlag,Direction,Orientation)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultilineStringOutline</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>text</span>: <span class='kt'>string</span>,<span class='o'>alignment</span>: <span class='kt'>HorizontalAlignment</span>,<span class='o'>width</span>: <span class='kt'>number</span>,<span class='o'>fontSize</span>: <span class='kt'>number</span>,<span class='o'>maxLines</span>: <span class='kt'>number</span>,<span class='o'>size</span>: <span class='kt'>number</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>brkFlags</span>: <span class='kt'>LineBreakFlag</span>,<span class='o'>justificationFlags</span>: <span class='kt'>JustificationFlag</span>,<span class='o'>direction</span>: <span class='kt'>Direction</span>,<span class='o'>orientation</span>: <span class='kt'>Orientation</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>HorizontalAlignment</span> {:/} | {::nomarkdown} <span class='o'>alignment</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>maxLines</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>size</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>LineBreakFlag</span> {:/} | {::nomarkdown} <span class='o'>brkFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>JustificationFlag</span> {:/} | {::nomarkdown} <span class='o'>justificationFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Direction</span> {:/} | {::nomarkdown} <span class='o'>direction</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Orientation</span> {:/} | {::nomarkdown} <span class='o'>orientation</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawStringOutline(Font,Vector2,string,HorizontalAlignment,number,number,number,Nullable__Color,JustificationFlag,Direction,Orientation)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawStringOutline</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>text</span>: <span class='kt'>string</span>,<span class='o'>alignment</span>: <span class='kt'>HorizontalAlignment</span>,<span class='o'>width</span>: <span class='kt'>number</span>,<span class='o'>fontSize</span>: <span class='kt'>number</span>,<span class='o'>size</span>: <span class='kt'>number</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>justificationFlags</span>: <span class='kt'>JustificationFlag</span>,<span class='o'>direction</span>: <span class='kt'>Direction</span>,<span class='o'>orientation</span>: <span class='kt'>Orientation</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>HorizontalAlignment</span> {:/} | {::nomarkdown} <span class='o'>alignment</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>size</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>JustificationFlag</span> {:/} | {::nomarkdown} <span class='o'>justificationFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Direction</span> {:/} | {::nomarkdown} <span class='o'>direction</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Orientation</span> {:/} | {::nomarkdown} <span class='o'>orientation</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawMultilineString(Font,Vector2,string,HorizontalAlignment,number,number,number,Nullable__Color,LineBreakFlag,JustificationFlag,Direction,Orientation)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawMultilineString</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>text</span>: <span class='kt'>string</span>,<span class='o'>alignment</span>: <span class='kt'>HorizontalAlignment</span>,<span class='o'>width</span>: <span class='kt'>number</span>,<span class='o'>fontSize</span>: <span class='kt'>number</span>,<span class='o'>maxLines</span>: <span class='kt'>number</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>brkFlags</span>: <span class='kt'>LineBreakFlag</span>,<span class='o'>justificationFlags</span>: <span class='kt'>JustificationFlag</span>,<span class='o'>direction</span>: <span class='kt'>Direction</span>,<span class='o'>orientation</span>: <span class='kt'>Orientation</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>HorizontalAlignment</span> {:/} | {::nomarkdown} <span class='o'>alignment</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>maxLines</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>LineBreakFlag</span> {:/} | {::nomarkdown} <span class='o'>brkFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>JustificationFlag</span> {:/} | {::nomarkdown} <span class='o'>justificationFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Direction</span> {:/} | {::nomarkdown} <span class='o'>direction</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Orientation</span> {:/} | {::nomarkdown} <span class='o'>orientation</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### DrawString(Font,Vector2,string,HorizontalAlignment,number,number,Nullable__Color,JustificationFlag,Direction,Orientation)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DrawString</span>(<span class='o'>font</span>: <span class='kt'>Font</span>,<span class='o'>pos</span>: <span class='kt'>Vector2</span>,<span class='o'>text</span>: <span class='kt'>string</span>,<span class='o'>alignment</span>: <span class='kt'>HorizontalAlignment</span>,<span class='o'>width</span>: <span class='kt'>number</span>,<span class='o'>fontSize</span>: <span class='kt'>number</span>,<span class='o'>modulate</span>: <span class='kt'>Nullable__Color</span>,<span class='o'>justificationFlags</span>: <span class='kt'>JustificationFlag</span>,<span class='o'>direction</span>: <span class='kt'>Direction</span>,<span class='o'>orientation</span>: <span class='kt'>Orientation</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Font</span> {:/} | {::nomarkdown} <span class='o'>font</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Vector2</span> {:/} | {::nomarkdown} <span class='o'>pos</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>text</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>HorizontalAlignment</span> {:/} | {::nomarkdown} <span class='o'>alignment</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>width</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>fontSize</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Nullable__Color</span> {:/} | {::nomarkdown} <span class='o'>modulate</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>JustificationFlag</span> {:/} | {::nomarkdown} <span class='o'>justificationFlags</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Direction</span> {:/} | {::nomarkdown} <span class='o'>direction</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Orientation</span> {:/} | {::nomarkdown} <span class='o'>orientation</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
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
> Fetches a child node by its index. Each child node has an index relative to its siblings (see ). The first child is at index 0. Negative values can also be used to start from the end of the list. This method can be used in combination with to iterate over this node's children. If no child exists at the given index, this method returns and an error is generated.If is , internal children are ignored (see 's internal parameter). # Assuming the following are children of this node, in order: # First, Middle, Last. var a = get_child(0).name # a is "First" var b = get_child(1).name # b is "Middle" var b = get_child(2).name # b is "Last" var c = get_child(-1).name # c is "Last" Note: To fetch a node by , use .
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

### _GetAccessibilityConfigurationWarnings
> The elements in the array returned from this method are displayed as warnings in the Scene dock if the script that overrides it is a tool script, and accessibility warnings are enabled in the editor settings.Returning an empty array produces no warnings.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_GetAccessibilityConfigurationWarnings</span>() -> <span class='kt'>String[]</span>
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

### _GetFocusedAccessibilityElement
> Called during accessibility information updates to determine the currently focused sub-element, should return a sub-element RID or the value returned by .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_GetFocusedAccessibilityElement</span>() -> <span class='kt'>Rid</span>
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

### _Process(number)
> Called during the processing step of the main loop. Processing happens at every frame and as fast as possible, so the time since the previous frame is not constant. is in seconds.It is only called if processing is enabled, which is done automatically if this method is overridden, and can be toggled with .Processing happens in order of , lower priority values are called first. Nodes with the same priority are processed in tree order, or top to bottom as seen in the editor (also known as pre-order traversal).Corresponds to the notification in .Note: This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).Note: will be larger than expected if running at a framerate lower than / FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both and . As a result, avoid using for time measurements in real-world seconds. Use the singleton's methods for this purpose instead, such as .
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

### _Ready
> Called when the node is "ready", i.e. when both the node and its children have entered the scene tree. If the node has children, their callbacks get triggered first, and the parent node will receive the ready notification afterwards.Corresponds to the notification in . See also the @onready annotation for variables.Usually used for initialization. For even earlier initialization, may be used. See also .Note: This method may be called only once for each node. After removing a node from the scene tree and adding it again, will not be called a second time. This can be bypassed by requesting another call with , which may be called anywhere before adding the node again.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>_Ready</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

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
> Fetches a child node by its index. Each child node has an index relative to its siblings (see ). The first child is at index 0. Negative values can also be used to start from the end of the list. This method can be used in combination with to iterate over this node's children. If no child exists at the given index, this method returns and an error is generated.If is , internal children are ignored (see 's internal parameter). # Assuming the following are children of this node, in order: # First, Middle, Last. var a = get_child(0).name # a is "First" var b = get_child(1).name # b is "Middle" var b = get_child(2).name # b is "Last" var c = get_child(-1).name # c is "Last" Note: To fetch a node by , use .
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
> Fetches a node and its most nested resource as specified by the 's subname. Returns an of size 3 where:- Element 0 is the , or if not found;- Element 1 is the subname's last nested , or if not found;- Element 2 is the remaining , referring to an existing, non- property (see ).Example: Assume that the child's has been assigned an : var a = GetNodeAndResource(NodePath("Area2D/Sprite2D")); GD.Print(a[0].Name); // Prints Sprite2D GD.Print(a[1]); // Prints <null> GD.Print(a[2]); // Prints ^" var b = GetNodeAndResource(NodePath("Area2D/Sprite2D:texture:atlas")); GD.Print(b[0].name); // Prints Sprite2D GD.Print(b[1].get_class()); // Prints AtlasTexture GD.Print(b[2]); // Prints ^"" var c = GetNodeAndResource(NodePath("Area2D/Sprite2D:texture:atlas:region")); GD.Print(c[0].name); // Prints Sprite2D GD.Print(c[1].get_class()); // Prints AtlasTexture GD.Print(c[2]); // Prints ^":region"
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

### QueueAccessibilityUpdate
> Queues an accessibility information update for this node.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>QueueAccessibilityUpdate</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### GetAccessibilityElement
> Returns main accessibility element RID.Note: This method should be called only during accessibility information updates ().
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetAccessibilityElement</span>() -> <span class='kt'>Rid</span>
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

### CanAutoTranslate
> Returns if this node can automatically translate messages depending on the current locale. See , , and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CanAutoTranslate</span>() -> <span class='kt'>boolean</span>
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
> Duplicates the node, returning a new node with all of its properties, signals, groups, and children copied from the original. The behavior can be tweaked through the (see ). Internal nodes are not duplicated.Note: For nodes with a attached, if has been defined with required parameters, the duplicated node will not have a .
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
> If set to , the node becomes an when packed and instantiated from a . See also .
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

### GetNodeRpcConfig
> Returns a mapping method names to their RPC configuration defined for this node using .Note: This method only returns the RPC configuration assigned via . See to retrieve the RPCs defined by the .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetNodeRpcConfig</span>() -> <span class='kt'>Variant</span>
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

### GetRpcConfig
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetRpcConfig</span>() -> <span class='kt'>Variant</span>
</pre>
</div>
</div>

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
> Override this method to customize the behavior of . Should return the given 's value, or if the should be handled normally.Combined with and , this method allows defining custom properties, which is particularly useful for editor plugins.Note: This method is not called when getting built-in properties of an object, including properties defined with [annotation @GDScript.@export]. public override Variant _Get(StringName property) { if (property == "FakeProperty") { GD.Print("Getting my property!"); return 4; } return default; } public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetPropertyList() { return [ new Godot.Collections.Dictionary() { { "name", "FakeProperty" }, { "type", (int)Variant.Type.Int }, }, ]; }
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
> Returns the current iterable value. stores the iteration state, but unlike and the state is supposed to be read-only, so there is no wrapper.Tip: In GDScript, you can use a subtype of as the return type for . The specified type will be used to set the type of the iterator variable in for loops, enhancing type safety.
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
> Initializes the iterator. stores the iteration state. Since GDScript does not support passing arguments by reference, a single-element array is used as a wrapper. Returns so long as the iterator has not reached the end. class MyRange: var _from var _to func _init(from, to): assert(from <= to) _from = from _to = to func _iter_init(iter): iter[0] = _from return iter[0] < _to func _iter_next(iter): iter[0] += 1 return iter[0] < _to func _iter_get(iter): return iter func _ready(): var my_range = MyRange.new(2, 5) for x in my_range: print(x) # Prints 2, 3, 4. Note: Alternatively, you can ignore and use the object's state instead, see online docs for an example. Note that in this case you will not be able to reuse the same iterator instance in nested loops. Also, make sure you reset the iterator state in this method if you want to reuse the same instance multiple times.
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
> Called when the object receives a notification, which can be identified in by comparing it with a constant. See also . public override void _Notification(int what) { if (what == NotificationPredelete) { GD.Print("Goodbye!"); } } Note: The base defines a few notifications ( and ). Inheriting classes such as define a lot more notifications, which are also received by this method.Note: Unlike other virtual methods, this method is called automatically for every script that overrides it. This means that the base implementation should not be called via super in GDScript or its equivalents in other languages.
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
> Override this method to customize the behavior of . Should set the to and return , or if the should be handled normally. The exact way to set the is up to this method's implementation.Combined with and , this method allows defining custom properties, which is particularly useful for editor plugins.Note: This method is not called when setting built-in properties of an object, including properties defined with [annotation @GDScript.@export]. private Godot.Collections.Dictionary _internalData = new Godot.Collections.Dictionary(); public override bool _Set(StringName property, Variant value) { if (property == "FakeProperty") { // Storing the value in the fake property. _internalData["FakeProperty"] = value; return true; } return false; } public override Godot.Collections.Array<Godot.Collections.Dictionary> _GetPropertyList() { return [ new Godot.Collections.Dictionary() { { "name", "FakeProperty" }, { "type", (int)Variant.Type.Int }, }, ]; }
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
> Deletes the object from memory. Pre-existing references to the object become invalid, and any attempt to access them will result in a runtime error. Checking the references with @GlobalScope.is_instance_valid will return . This is equivalent to the memdelete function in GDExtension C++.
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
> Connects a by name to a . Optional can be also added to configure the connection's behavior (see constants).A signal can only be connected once to the same . If the signal is already connected, this method returns and generates an error, unless the signal is connected with . To prevent this, use first to check for existing connections.Note: If the 's object is freed, the connection will be lost.Note: In GDScript, it is generally recommended to connect signals with Signal.connect instead.Note: This operation (and all other signal related operations) is thread-safe.
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

## Static Functions
*Do not require an instance!*
{: .notice--warning}

### AddChildren(boolean,Control[])
> Adds multiple children to the
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddChildren</span>(<span class='o'>forceReadableNames</span>: <span class='kt'>boolean</span> = False,<span class='o'>children</span>: <span class='kt'>Control[]</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>forceReadableNames</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Control[]</span> {:/} | {::nomarkdown} <span class='o'>children</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### HideAll
> Hides all children
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>HideAll</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

