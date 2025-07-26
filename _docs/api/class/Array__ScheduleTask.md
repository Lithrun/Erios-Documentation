---
title: Array__ScheduleTask
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
            
Typed wrapper around Godot's Array class, an array of 
            annotated, Variant typed elements allocated in the engine in C++.
            Useful when interfacing with the engine. Otherwise prefer .NET collections
            such as arrays or .

## Constructors
{:.constructor}

### Array__ScheduleTask.__new()
> Constructs a new empty .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Array__ScheduleTask.__new</span>()
</pre>
</div>
</div>

### Array__ScheduleTask.__new(IEnumerable__ScheduleTask)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Array__ScheduleTask.__new</span>(<span class='o'>collection</span>: <span class='kt'>IEnumerable__ScheduleTask</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>IEnumerable__ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>collection</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Array__ScheduleTask.__new(ScheduleTask[])
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Array__ScheduleTask.__new</span>(<span class='o'>array</span>: <span class='kt'>ScheduleTask[]</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask[]</span> {:/} | {::nomarkdown} <span class='o'>array</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Array__ScheduleTask.__new(Array)
> Constructs a typed from an untyped .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Array__ScheduleTask.__new</span>(<span class='o'>array</span>: <span class='kt'>Array</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Array</span> {:/} | {::nomarkdown} <span class='o'>array</span> {:/} | {::nomarkdown} <span class='c'>The untyped array to construct from.</span> {:/} |
{:class="table table-bordered highlight"}

## ReadOnly
{:.readonly}

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>Count</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Returns the number of elements in this . This is also known as the size or length of the array.</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='nf'>IsReadOnly</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>Returns if the array is read-only. See .</span> {:/} |
{:class="table table-bordered highlight"}

## Properties
{:.property}

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='nf'>get_Item</span>() {:/} | {::nomarkdown} <span class='nf'>set_Item</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions
{:.function}

*Requires an instance!*
{: .notice--warning}

### Duplicate(boolean)
> Duplicates this .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Duplicate</span>(<span class='o'>deep</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>Array__ScheduleTask</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>deep</span> {:/} | {::nomarkdown} <span class='c'>If , performs a deep copy.</span> {:/} |
{:class="table table-bordered highlight"}

### Fill(ScheduleTask)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Fill</span>(<span class='o'>value</span>: <span class='kt'>ScheduleTask</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Max
> Returns the maximum value contained in the array if all elements are of comparable types. If the elements can't be compared, is returned.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Max</span>() -> <span class='kt'>ScheduleTask</span>
</pre>
</div>
</div>

### Min
> Returns the minimum value contained in the array if all elements are of comparable types. If the elements can't be compared, is returned.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Min</span>() -> <span class='kt'>ScheduleTask</span>
</pre>
</div>
</div>

### PickRandom
> Returns a random value from the target array.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>PickRandom</span>() -> <span class='kt'>ScheduleTask</span>
</pre>
</div>
</div>

### RecursiveEqual(Array__ScheduleTask)
> Compares this against the recursively. Returns if the sizes and contents of the arrays are equal, otherwise.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RecursiveEqual</span>(<span class='o'>other</span>: <span class='kt'>Array__ScheduleTask</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Array__ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>other</span> {:/} | {::nomarkdown} <span class='c'>The other array to compare against.</span> {:/} |
{:class="table table-bordered highlight"}

### Resize(number)
> Resizes this to the given size.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Resize</span>(<span class='o'>newSize</span>: <span class='kt'>number</span>) -> <span class='kt'>Error</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>newSize</span> {:/} | {::nomarkdown} <span class='c'>The new size of the array.</span> {:/} |
{:class="table table-bordered highlight"}

### Reverse
> Reverses the order of the elements in the array.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Reverse</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Shuffle
> Shuffles the array such that the items will have a random order. This method uses the global random number generator common to methods such as . Call to ensure that a new seed will be used each time if you want non-reproducible shuffling.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Shuffle</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Slice(number)
> Creates a shallow copy of a range of elements in the source .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Slice</span>(<span class='o'>start</span>: <span class='kt'>number</span>) -> <span class='kt'>Array__ScheduleTask</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>start</span> {:/} | {::nomarkdown} <span class='c'>The zero-based index at which the range starts.</span> {:/} |
{:class="table table-bordered highlight"}

### Slice(number,number)
> Creates a shallow copy of a range of elements in the source .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Slice</span>(<span class='o'>start</span>: <span class='kt'>number</span>,<span class='o'>length</span>: <span class='kt'>number</span>) -> <span class='kt'>Array__ScheduleTask</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>start</span> {:/} | {::nomarkdown} <span class='c'>The zero-based index at which the range starts.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>length</span> {:/} | {::nomarkdown} <span class='c'>The length of the range.</span> {:/} |
{:class="table table-bordered highlight"}

### GetSliceRange(number,number,number,boolean)
> Returns the slice of the , from (inclusive) to (exclusive), as a new . The absolute value of and will be clamped to the array size. If either or are negative, they will be relative to the end of the array (i.e. arr.GetSliceRange(0, -2) is a shorthand for arr.GetSliceRange(0, arr.Count - 2)). If specified, is the relative index between source elements. It can be negative, then must be higher than . For example, [0, 1, 2, 3, 4, 5].GetSliceRange(5, 1, -2) returns [5, 3]. If is true, each element will be copied by value rather than by reference.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetSliceRange</span>(<span class='o'>start</span>: <span class='kt'>number</span>,<span class='o'>end</span>: <span class='kt'>number</span>,<span class='o'>step</span>: <span class='kt'>number</span> = 1,<span class='o'>deep</span>: <span class='kt'>boolean</span> = False) -> <span class='kt'>Array__ScheduleTask</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>start</span> {:/} | {::nomarkdown} <span class='c'>The zero-based index at which the range starts.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>end</span> {:/} | {::nomarkdown} <span class='c'>The zero-based index at which the range ends.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>step</span> {:/} | {::nomarkdown} <span class='c'>The relative index between source elements to take.</span> {:/} |
| {::nomarkdown} <span class='kt'>boolean</span> {:/} | {::nomarkdown} <span class='o'>deep</span> {:/} | {::nomarkdown} <span class='c'>If , performs a deep copy.</span> {:/} |
{:class="table table-bordered highlight"}

### Sort
> Sorts the array. Note: The sorting algorithm used is not stable. This means that values considered equal may have their order changed when using . Note: Strings are sorted in alphabetical order (as opposed to natural order). This may lead to unexpected behavior when sorting an array of strings ending with a sequence of numbers. To sort with a custom predicate use .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Sort</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### IndexOf(ScheduleTask)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IndexOf</span>(<span class='o'>item</span>: <span class='kt'>ScheduleTask</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### IndexOf(ScheduleTask,number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IndexOf</span>(<span class='o'>item</span>: <span class='kt'>ScheduleTask</span>,<span class='o'>index</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>index</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### LastIndexOf(Variant)
> Searches the array for a value in reverse order and returns its index or -1 if not found.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>LastIndexOf</span>(<span class='o'>item</span>: <span class='kt'>Variant</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'>The  item to search for.</span> {:/} |
{:class="table table-bordered highlight"}

### LastIndexOf(Variant,number)
> Searches the array for a value in reverse order and returns its index or -1 if not found.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>LastIndexOf</span>(<span class='o'>item</span>: <span class='kt'>Variant</span>,<span class='o'>index</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Variant</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'>The  item to search for.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>index</span> {:/} | {::nomarkdown} <span class='c'>The initial search index to start from.</span> {:/} |
{:class="table table-bordered highlight"}

### Insert(number,ScheduleTask)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Insert</span>(<span class='o'>index</span>: <span class='kt'>number</span>,<span class='o'>item</span>: <span class='kt'>ScheduleTask</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>index</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### RemoveAt(number)
> Removes an element from the array by index. To remove an element by searching for its value, use instead.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>RemoveAt</span>(<span class='o'>index</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>index</span> {:/} | {::nomarkdown} <span class='c'>The index of the element to remove.</span> {:/} |
{:class="table table-bordered highlight"}

### MakeReadOnly
> Makes the read-only, i.e. disabled modying of the array's elements. Does not apply to nested content, e.g. content of nested arrays.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>MakeReadOnly</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Add(ScheduleTask)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Add</span>(<span class='o'>item</span>: <span class='kt'>ScheduleTask</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### AddRange(IEnumerable__ScheduleTask)
> Adds the elements of the specified collection to the end of this .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AddRange</span>(<span class='o'>collection</span>: <span class='kt'>IEnumerable__ScheduleTask</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>IEnumerable__ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>collection</span> {:/} | {::nomarkdown} <span class='c'>Collection of  items to add.</span> {:/} |
{:class="table table-bordered highlight"}

### BinarySearch(number,number,ScheduleTask)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>BinarySearch</span>(<span class='o'>index</span>: <span class='kt'>number</span>,<span class='o'>count</span>: <span class='kt'>number</span>,<span class='o'>item</span>: <span class='kt'>ScheduleTask</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>index</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>count</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### BinarySearch(ScheduleTask)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>BinarySearch</span>(<span class='o'>item</span>: <span class='kt'>ScheduleTask</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Clear
> Clears the array. This is the equivalent to using with a size of 0
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Clear</span>() -> <span class='kt'>nil</span>
</pre>
</div>
</div>

### Contains(ScheduleTask)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Contains</span>(<span class='o'>item</span>: <span class='kt'>ScheduleTask</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### CopyTo(ScheduleTask[],number)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CopyTo</span>(<span class='o'>array</span>: <span class='kt'>ScheduleTask[]</span>,<span class='o'>arrayIndex</span>: <span class='kt'>number</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask[]</span> {:/} | {::nomarkdown} <span class='o'>array</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>arrayIndex</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Remove(ScheduleTask)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Remove</span>(<span class='o'>item</span>: <span class='kt'>ScheduleTask</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>ScheduleTask</span> {:/} | {::nomarkdown} <span class='o'>item</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### GetEnumerator
> Gets an enumerator for this .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetEnumerator</span>() -> <span class='kt'>IEnumerator__ScheduleTask</span>
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

