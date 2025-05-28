---
# This file was automatically generated on 2025-05-28 by the Lunaris Documentation Generator
title: Vector3
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
            
3-element structure that can be used to represent positions in 3D space or any other pair of numeric values.

## Constructors
### Vector3.__new(number,number,number)
> Constructs a new with the given components.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Vector3.__new</span>(<span class='o'>x</span>: <span class='kt'>number</span>,<span class='o'>y</span>: <span class='kt'>number</span>,<span class='o'>z</span>: <span class='kt'>number</span>)
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>x</span> {:/} | {::nomarkdown} <span class='c'>The vector's X component.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>y</span> {:/} | {::nomarkdown} <span class='c'>The vector's Y component.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>z</span> {:/} | {::nomarkdown} <span class='c'>The vector's Z component.</span> {:/} |
{:class="table table-bordered highlight"}

## Fields

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>X</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The vector's X component. Also accessible by using the index position [0].</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Y</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The vector's Y component. Also accessible by using the index position [1].</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Z</span> {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'>The vector's Z component. Also accessible by using the index position [2].</span> {:/} |
{:class="table table-bordered highlight"}

## ReadOnly

| Type | Name | Static | Default | Description |
| --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>Back</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (0, 0, 1) {:/} | {::nomarkdown} <span class='c'>Back unit vector. Represents the local direction of back, and the global direction of south.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>Down</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (0, -1, 0) {:/} | {::nomarkdown} <span class='c'>Down unit vector.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>Forward</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (0, 0, -1) {:/} | {::nomarkdown} <span class='c'>Forward unit vector. Represents the local direction of forward, and the global direction of north.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>Inf</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (Infinity, Infinity, Infinity) {:/} | {::nomarkdown} <span class='c'>Infinity vector, a vector with all components set to .</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>Left</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (-1, 0, 0) {:/} | {::nomarkdown} <span class='c'>Left unit vector. Represents the local direction of left, and the global direction of west.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>ModelBottom</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (0, -1, 0) {:/} | {::nomarkdown} <span class='c'>Unit vector pointing towards the bottom side (down) of imported 3D assets.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>ModelFront</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (0, 0, 1) {:/} | {::nomarkdown} <span class='c'>Unit vector pointing towards the front side (facing forward) of imported 3D assets.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>ModelLeft</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (1, 0, 0) {:/} | {::nomarkdown} <span class='c'>Unit vector pointing towards the left side of imported 3D assets.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>ModelRear</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (0, 0, -1) {:/} | {::nomarkdown} <span class='c'>Unit vector pointing towards the rear side (back) of imported 3D assets.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>ModelRight</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (-1, 0, 0) {:/} | {::nomarkdown} <span class='c'>Unit vector pointing towards the right side of imported 3D assets.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>ModelTop</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (0, 1, 0) {:/} | {::nomarkdown} <span class='c'>Unit vector pointing towards the top side (up) of imported 3D assets.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>One</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (1, 1, 1) {:/} | {::nomarkdown} <span class='c'>One vector, a vector with all components set to 1.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>Right</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (1, 0, 0) {:/} | {::nomarkdown} <span class='c'>Right unit vector. Represents the local direction of right, and the global direction of east.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>Up</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (0, 1, 0) {:/} | {::nomarkdown} <span class='c'>Up unit vector.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='nf'>Zero</span> {:/} | {::nomarkdown} <i class ='fas fa-check'></i>  {:/} | {::nomarkdown} (0, 0, 0) {:/} | {::nomarkdown} <span class='c'>Zero vector, a vector with all components set to 0.</span> {:/} |
{:class="table table-bordered highlight"}

## Properties

| Type | Getter | Setter | Static | Default | Description |
| --- | --- | --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='nf'>get_Item</span>() {:/} | {::nomarkdown} <span class='nf'>set_Item</span>(<span class='o'>val</span>) {:/} | {::nomarkdown}   {:/} | {::nomarkdown}  {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

## Functions
*Requires an instance!*
{: .notice--warning}

### Deconstruct(Single&,Single&,Single&)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Deconstruct</span>(<span class='o'>x</span>: <span class='kt'>Single&</span>,<span class='o'>y</span>: <span class='kt'>Single&</span>,<span class='o'>z</span>: <span class='kt'>Single&</span>) -> <span class='kt'>nil</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Single&</span> {:/} | {::nomarkdown} <span class='o'>x</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Single&</span> {:/} | {::nomarkdown} <span class='o'>y</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>Single&</span> {:/} | {::nomarkdown} <span class='o'>z</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Abs
> Returns a new vector with all components in absolute values (i.e. positive).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Abs</span>() -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

### AngleTo(Vector3)
> Returns the unsigned minimum angle to the given vector, in radians.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>AngleTo</span>(<span class='o'>to</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'>The other vector to compare this vector to.</span> {:/} |
{:class="table table-bordered highlight"}

### Bounce(Vector3)
> Returns this vector "bounced off" from a plane defined by the given normal.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Bounce</span>(<span class='o'>normal</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>normal</span> {:/} | {::nomarkdown} <span class='c'>The normal vector defining the plane to bounce off. Must be normalized.</span> {:/} |
{:class="table table-bordered highlight"}

### Ceil
> Returns a new vector with all components rounded up (towards positive infinity).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Ceil</span>() -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

### Clamp(Vector3,Vector3)
> Returns a new vector with all components clamped between the components of and using .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Clamp</span>(<span class='o'>min</span>: <span class='kt'>Vector3</span>,<span class='o'>max</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>min</span> {:/} | {::nomarkdown} <span class='c'>The vector with minimum allowed values.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>max</span> {:/} | {::nomarkdown} <span class='c'>The vector with maximum allowed values.</span> {:/} |
{:class="table table-bordered highlight"}

### Clamp(number,number)
> Returns a new vector with all components clamped between the and using .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Clamp</span>(<span class='o'>min</span>: <span class='kt'>number</span>,<span class='o'>max</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>min</span> {:/} | {::nomarkdown} <span class='c'>The minimum allowed value.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>max</span> {:/} | {::nomarkdown} <span class='c'>The maximum allowed value.</span> {:/} |
{:class="table table-bordered highlight"}

### Cross(Vector3)
> Returns the cross product of this vector and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Cross</span>(<span class='o'>with</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>with</span> {:/} | {::nomarkdown} <span class='c'>The other vector.</span> {:/} |
{:class="table table-bordered highlight"}

### CubicInterpolate(Vector3,Vector3,Vector3,number)
> Performs a cubic interpolation between vectors , this vector, , and , by the given amount .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CubicInterpolate</span>(<span class='o'>b</span>: <span class='kt'>Vector3</span>,<span class='o'>preA</span>: <span class='kt'>Vector3</span>,<span class='o'>postB</span>: <span class='kt'>Vector3</span>,<span class='o'>weight</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>b</span> {:/} | {::nomarkdown} <span class='c'>The destination vector.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>preA</span> {:/} | {::nomarkdown} <span class='c'>A vector before this vector.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>postB</span> {:/} | {::nomarkdown} <span class='c'>A vector after .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>weight</span> {:/} | {::nomarkdown} <span class='c'>A value on the range of 0.0 to 1.0, representing the amount of interpolation.</span> {:/} |
{:class="table table-bordered highlight"}

### CubicInterpolateInTime(Vector3,Vector3,Vector3,number,number,number,number)
> Performs a cubic interpolation between vectors , this vector, , and , by the given amount . It can perform smoother interpolation than by the time values.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>CubicInterpolateInTime</span>(<span class='o'>b</span>: <span class='kt'>Vector3</span>,<span class='o'>preA</span>: <span class='kt'>Vector3</span>,<span class='o'>postB</span>: <span class='kt'>Vector3</span>,<span class='o'>weight</span>: <span class='kt'>number</span>,<span class='o'>t</span>: <span class='kt'>number</span>,<span class='o'>preAT</span>: <span class='kt'>number</span>,<span class='o'>postBT</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>b</span> {:/} | {::nomarkdown} <span class='c'>The destination vector.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>preA</span> {:/} | {::nomarkdown} <span class='c'>A vector before this vector.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>postB</span> {:/} | {::nomarkdown} <span class='c'>A vector after .</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>weight</span> {:/} | {::nomarkdown} <span class='c'>A value on the range of 0.0 to 1.0, representing the amount of interpolation.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>t</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>preAT</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>postBT</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### BezierInterpolate(Vector3,Vector3,Vector3,number)
> Returns the point at the given on a one-dimensional Bezier curve defined by this vector and the given , , and points.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>BezierInterpolate</span>(<span class='o'>control1</span>: <span class='kt'>Vector3</span>,<span class='o'>control2</span>: <span class='kt'>Vector3</span>,<span class='o'>end</span>: <span class='kt'>Vector3</span>,<span class='o'>t</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>control1</span> {:/} | {::nomarkdown} <span class='c'>Control point that defines the bezier curve.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>control2</span> {:/} | {::nomarkdown} <span class='c'>Control point that defines the bezier curve.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>end</span> {:/} | {::nomarkdown} <span class='c'>The destination vector.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>t</span> {:/} | {::nomarkdown} <span class='c'>A value on the range of 0.0 to 1.0, representing the amount of interpolation.</span> {:/} |
{:class="table table-bordered highlight"}

### BezierDerivative(Vector3,Vector3,Vector3,number)
> Returns the derivative at the given on the Bezier curve defined by this vector and the given , , and points.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>BezierDerivative</span>(<span class='o'>control1</span>: <span class='kt'>Vector3</span>,<span class='o'>control2</span>: <span class='kt'>Vector3</span>,<span class='o'>end</span>: <span class='kt'>Vector3</span>,<span class='o'>t</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>control1</span> {:/} | {::nomarkdown} <span class='c'>Control point that defines the bezier curve.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>control2</span> {:/} | {::nomarkdown} <span class='c'>Control point that defines the bezier curve.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>end</span> {:/} | {::nomarkdown} <span class='c'>The destination value for the interpolation.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>t</span> {:/} | {::nomarkdown} <span class='c'>A value on the range of 0.0 to 1.0, representing the amount of interpolation.</span> {:/} |
{:class="table table-bordered highlight"}

### DirectionTo(Vector3)
> Returns the normalized vector pointing from this vector to .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DirectionTo</span>(<span class='o'>to</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'>The other vector to point towards.</span> {:/} |
{:class="table table-bordered highlight"}

### DistanceSquaredTo(Vector3)
> Returns the squared distance between this vector and . This method runs faster than , so prefer it if you need to compare vectors or need the squared distance for some formula.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DistanceSquaredTo</span>(<span class='o'>to</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'>The other vector to use.</span> {:/} |
{:class="table table-bordered highlight"}

### DistanceTo(Vector3)
> Returns the distance between this vector and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>DistanceTo</span>(<span class='o'>to</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'>The other vector to use.</span> {:/} |
{:class="table table-bordered highlight"}

### Dot(Vector3)
> Returns the dot product of this vector and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Dot</span>(<span class='o'>with</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>with</span> {:/} | {::nomarkdown} <span class='c'>The other vector to use.</span> {:/} |
{:class="table table-bordered highlight"}

### Floor
> Returns a new vector with all components rounded down (towards negative infinity).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Floor</span>() -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

### Inverse
> Returns the inverse of this vector. This is the same as new Vector3(1 / v.X, 1 / v.Y, 1 / v.Z).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Inverse</span>() -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

### IsFinite
> Returns if this vector is finite, by calling on each component.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsFinite</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### IsNormalized
> Returns if the vector is normalized, and otherwise.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsNormalized</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### Length
> Returns the length (magnitude) of this vector.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Length</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### LengthSquared
> Returns the squared length (squared magnitude) of this vector. This method runs faster than , so prefer it if you need to compare vectors or need the squared length for some formula.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>LengthSquared</span>() -> <span class='kt'>number</span>
</pre>
</div>
</div>

### Lerp(Vector3,number)
> Returns the result of the linear interpolation between this vector and by amount .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Lerp</span>(<span class='o'>to</span>: <span class='kt'>Vector3</span>,<span class='o'>weight</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'>The destination vector for interpolation.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>weight</span> {:/} | {::nomarkdown} <span class='c'>A value on the range of 0.0 to 1.0, representing the amount of interpolation.</span> {:/} |
{:class="table table-bordered highlight"}

### LimitLength(number)
> Returns the vector with a maximum length by limiting its length to .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>LimitLength</span>(<span class='o'>length</span>: <span class='kt'>number</span> = 1) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>length</span> {:/} | {::nomarkdown} <span class='c'>The length to limit to.</span> {:/} |
{:class="table table-bordered highlight"}

### Max(Vector3)
> Returns the result of the component-wise maximum between this vector and . Equivalent to new Vector3(Mathf.Max(X, with.X), Mathf.Max(Y, with.Y), Mathf.Max(Z, with.Z)).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Max</span>(<span class='o'>with</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>with</span> {:/} | {::nomarkdown} <span class='c'>The other vector to use.</span> {:/} |
{:class="table table-bordered highlight"}

### Max(number)
> Returns the result of the component-wise maximum between this vector and . Equivalent to new Vector3(Mathf.Max(X, with), Mathf.Max(Y, with), Mathf.Max(Z, with)).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Max</span>(<span class='o'>with</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>with</span> {:/} | {::nomarkdown} <span class='c'>The other value to use.</span> {:/} |
{:class="table table-bordered highlight"}

### Min(Vector3)
> Returns the result of the component-wise minimum between this vector and . Equivalent to new Vector3(Mathf.Min(X, with.X), Mathf.Min(Y, with.Y), Mathf.Min(Z, with.Z)).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Min</span>(<span class='o'>with</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>with</span> {:/} | {::nomarkdown} <span class='c'>The other vector to use.</span> {:/} |
{:class="table table-bordered highlight"}

### MaxAxisIndex
> Returns the axis of the vector's highest value. See . If all components are equal, this method returns .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>MaxAxisIndex</span>() -> <span class='kt'>Axis</span>
</pre>
</div>
</div>

### MinAxisIndex
> Returns the axis of the vector's lowest value. See . If all components are equal, this method returns .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>MinAxisIndex</span>() -> <span class='kt'>Axis</span>
</pre>
</div>
</div>

### MoveToward(Vector3,number)
> Moves this vector toward by the fixed amount.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>MoveToward</span>(<span class='o'>to</span>: <span class='kt'>Vector3</span>,<span class='o'>delta</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'>The vector to move towards.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>delta</span> {:/} | {::nomarkdown} <span class='c'>The amount to move towards by.</span> {:/} |
{:class="table table-bordered highlight"}

### Normalized
> Returns the vector scaled to unit length. Equivalent to v / v.Length().
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Normalized</span>() -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

### Outer(Vector3)
> Returns the outer product with .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Outer</span>(<span class='o'>with</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Basis</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>with</span> {:/} | {::nomarkdown} <span class='c'>The other vector.</span> {:/} |
{:class="table table-bordered highlight"}

### PosMod(number)
> Returns a vector composed of the of this vector's components and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>PosMod</span>(<span class='o'>mod</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>mod</span> {:/} | {::nomarkdown} <span class='c'>A value representing the divisor of the operation.</span> {:/} |
{:class="table table-bordered highlight"}

### PosMod(Vector3)
> Returns a vector composed of the of this vector's components and 's components.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>PosMod</span>(<span class='o'>modv</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>modv</span> {:/} | {::nomarkdown} <span class='c'>A vector representing the divisors of the operation.</span> {:/} |
{:class="table table-bordered highlight"}

### Project(Vector3)
> Returns a new vector resulting from projecting this vector onto the given vector . The resulting new vector is parallel to . See also . Note: If the vector is a zero vector, the components of the resulting new vector will be .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Project</span>(<span class='o'>onNormal</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>onNormal</span> {:/} | {::nomarkdown} <span class='c'>The vector to project onto.</span> {:/} |
{:class="table table-bordered highlight"}

### Reflect(Vector3)
> Returns this vector reflected from a plane defined by the given .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Reflect</span>(<span class='o'>normal</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>normal</span> {:/} | {::nomarkdown} <span class='c'>The normal vector defining the plane to reflect from. Must be normalized.</span> {:/} |
{:class="table table-bordered highlight"}

### Rotated(Vector3,number)
> Rotates this vector around a given vector by (in radians). The vector must be a normalized vector.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Rotated</span>(<span class='o'>axis</span>: <span class='kt'>Vector3</span>,<span class='o'>angle</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>axis</span> {:/} | {::nomarkdown} <span class='c'>The vector to rotate around. Must be normalized.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>angle</span> {:/} | {::nomarkdown} <span class='c'>The angle to rotate by, in radians.</span> {:/} |
{:class="table table-bordered highlight"}

### Round
> Returns this vector with all components rounded to the nearest integer, with halfway cases rounded towards the nearest multiple of two.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Round</span>() -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

### Sign
> Returns a vector with each component set to one or negative one, depending on the signs of this vector's components, or zero if the component is zero, by calling on each component.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Sign</span>() -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

### SignedAngleTo(Vector3,Vector3)
> Returns the signed angle to the given vector, in radians. The sign of the angle is positive in a counter-clockwise direction and negative in a clockwise direction when viewed from the side specified by the .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>SignedAngleTo</span>(<span class='o'>to</span>: <span class='kt'>Vector3</span>,<span class='o'>axis</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'>The other vector to compare this vector to.</span> {:/} |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>axis</span> {:/} | {::nomarkdown} <span class='c'>The reference axis to use for the angle sign.</span> {:/} |
{:class="table table-bordered highlight"}

### Slerp(Vector3,number)
> Returns the result of the spherical linear interpolation between this vector and by amount . This method also handles interpolating the lengths if the input vectors have different lengths. For the special case of one or both input vectors having zero length, this method behaves like .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Slerp</span>(<span class='o'>to</span>: <span class='kt'>Vector3</span>,<span class='o'>weight</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'>The destination vector for interpolation.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>weight</span> {:/} | {::nomarkdown} <span class='c'>A value on the range of 0.0 to 1.0, representing the amount of interpolation.</span> {:/} |
{:class="table table-bordered highlight"}

### Slide(Vector3)
> Returns a new vector resulting from sliding this vector along a plane with normal . The resulting new vector is perpendicular to , and is equivalent to this vector minus its projection on . See also . Note: The vector must be normalized. See also .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Slide</span>(<span class='o'>normal</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>normal</span> {:/} | {::nomarkdown} <span class='c'>The normal vector of the plane to slide on.</span> {:/} |
{:class="table table-bordered highlight"}

### Snapped(Vector3)
> Returns a new vector with each component snapped to the nearest multiple of the corresponding component in . This can also be used to round to an arbitrary number of decimals.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Snapped</span>(<span class='o'>step</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>step</span> {:/} | {::nomarkdown} <span class='c'>A vector value representing the step size to snap to.</span> {:/} |
{:class="table table-bordered highlight"}

### Snapped(number)
> Returns a new vector with each component snapped to the nearest multiple of . This can also be used to round to an arbitrary number of decimals.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Snapped</span>(<span class='o'>step</span>: <span class='kt'>number</span>) -> <span class='kt'>Vector3</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>step</span> {:/} | {::nomarkdown} <span class='c'>The step size to snap to.</span> {:/} |
{:class="table table-bordered highlight"}

### Equals(Object)
> Returns if the vector is exactly equal to the given object (). Note: Due to floating-point precision errors, consider using instead, which is more reliable.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Equals</span>(<span class='o'>obj</span>: <span class='kt'>Object</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Object</span> {:/} | {::nomarkdown} <span class='o'>obj</span> {:/} | {::nomarkdown} <span class='c'>The object to compare with.</span> {:/} |
{:class="table table-bordered highlight"}

### Equals(Vector3)
> Returns if the vectors are exactly equal. Note: Due to floating-point precision errors, consider using instead, which is more reliable.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Equals</span>(<span class='o'>other</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>other</span> {:/} | {::nomarkdown} <span class='c'>The other vector.</span> {:/} |
{:class="table table-bordered highlight"}

### IsEqualApprox(Vector3)
> Returns if this vector and are approximately equal, by running on each component.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsEqualApprox</span>(<span class='o'>other</span>: <span class='kt'>Vector3</span>) -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>Vector3</span> {:/} | {::nomarkdown} <span class='o'>other</span> {:/} | {::nomarkdown} <span class='c'>The other vector to compare.</span> {:/} |
{:class="table table-bordered highlight"}

### IsZeroApprox
> Returns if this vector's values are approximately zero, by running on each component. This method is faster than using with one value as a zero vector.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>IsZeroApprox</span>() -> <span class='kt'>boolean</span>
</pre>
</div>
</div>

### GetHashCode
> Serves as the hash function for .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>GetHashCode</span>() -> <span class='kt'>number</span>
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

### ToString(string)
> Converts this to a string with the given .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>ToString</span>(<span class='o'>format</span>: <span class='kt'>string</span>) -> <span class='kt'>string</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>string</span> {:/} | {::nomarkdown} <span class='o'>format</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

