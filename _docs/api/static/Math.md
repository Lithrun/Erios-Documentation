---
# This file was automatically generated on 2025-03-26 by the Lunaris Documentation Generator
title: Math
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
            
Provides constants and static methods for trigonometric, logarithmic, and other common mathematical functions.

## Constants
*The value of a constant cannot be changed*
{: .notice--warning}

| Type | Name | Value | Description
| --- | --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Pi</span> {:/} | {::nomarkdown} <span class='m'>3.141592653589793</span> {:/} | {::nomarkdown} <span class='c'>Represents the natural logarithmic base, specified by the constant, π.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>E</span> {:/} | {::nomarkdown} <span class='m'>2.718281828459045</span> {:/} | {::nomarkdown} <span class='c'>Represents the ratio of the circumference of a circle to its diameter, specified by the constant, e.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Tau</span> {:/} | {::nomarkdown} <span class='m'>6.283185307179586</span> {:/} | {::nomarkdown} <span class='c'>Represents the number of radians in one turn, specified by the constant, τ.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Infinity</span> {:/} | {::nomarkdown} <span class='m'>Infinity</span> {:/} | {::nomarkdown} <span class='c'>Represents the positive infinity value.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>NaN</span> {:/} | {::nomarkdown} <span class='m'>NaN</span> {:/} | {::nomarkdown} <span class='c'>Represents a value that is not a number (NaN).</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>Epsilon</span> {:/} | {::nomarkdown} <span class='m'>5E-324</span> {:/} | {::nomarkdown} <span class='c'>Represents the smallest positive numeric value greater than zero.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>MinValue</span> {:/} | {::nomarkdown} <span class='m'>-1.7976931348623157E+308</span> {:/} | {::nomarkdown} <span class='c'>Represents the smallest possible value of a Double.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>MaxValue</span> {:/} | {::nomarkdown} <span class='m'>1.7976931348623157E+308</span> {:/} | {::nomarkdown} <span class='c'>Represents the largest possible value of a Double.</span> {:/} |
{:class="table table-bordered highlight"}

## Functions

### Abs(number)
> Returns the absolute value of
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Abs</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Acos(number)
> Returns the arc cosine of x (in radians).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Acos</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Asin(number)
> Returns the angle whose sine is the specified number.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Asin</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'>A number representing a sine, where  must be greater than or equal to -1, but less than or equal to 1.</span> {:/} |
{:class="table table-bordered highlight"}

### Atan(number)
> Returns the arc tangent of x (in radians).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Atan</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Atan2(number,number)
> Returns the arc tangent of y/x (in radians), but uses the signs of both parameters to find the quadrant of the result. (It also handles correctly the case of x being zero.)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Atan2</span>(<span class='o'>y</span>: <span class='kt'>number</span>,<span class='o'>x</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>y</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>x</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Cbrt(number)
> Returns the cube root of x.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Cbrt</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Ceil(number)
> Returns the smallest integer larger than or equal to x.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Ceil</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Clamp(number,number,number)
> Returns clamped to the inclusive range of and .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Clamp</span>(<span class='o'>value</span>: <span class='kt'>number</span>,<span class='o'>min</span>: <span class='kt'>number</span>,<span class='o'>max</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'>The value to be clamped.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>min</span> {:/} | {::nomarkdown} <span class='c'>The lower bound of the result.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>max</span> {:/} | {::nomarkdown} <span class='c'>The upper bound of the result.</span> {:/} |
{:class="table table-bordered highlight"}

### Cos(number)
> Returns the cosine of x (assumed to be in radians).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Cos</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Cosh(number)
> Returns the hyperbolic cosine of x.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Cosh</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Deg(number)
> Returns the angle x (given in radians) in degrees.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Deg</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Exp(number)
> Returns the value e power x.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Exp</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Floor(number)
> Returns the largest integer smaller than or equal to x.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Floor</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### InverseLerp(number,number,number)
> Returns a normalized value considering the given range. This is the opposite of .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>InverseLerp</span>(<span class='o'>from</span>: <span class='kt'>number</span>,<span class='o'>to</span>: <span class='kt'>number</span>,<span class='o'>weight</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>from</span> {:/} | {::nomarkdown} <span class='c'>The start value for interpolation.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'>The destination value for interpolation.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>weight</span> {:/} | {::nomarkdown} <span class='c'>The interpolated value.</span> {:/} |
{:class="table table-bordered highlight"}

### Lerp(number,number,number)
> Linearly interpolates between two values by a normalized value. This is the opposite .
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Lerp</span>(<span class='o'>from</span>: <span class='kt'>number</span>,<span class='o'>to</span>: <span class='kt'>number</span>,<span class='o'>weight</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>from</span> {:/} | {::nomarkdown} <span class='c'>The start value for interpolation.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>to</span> {:/} | {::nomarkdown} <span class='c'>The destination value for interpolation.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>weight</span> {:/} | {::nomarkdown} <span class='c'>A value on the range of 0.0 to 1.0, representing the amount of interpolation.</span> {:/} |
{:class="table table-bordered highlight"}

### Log(number)
> Returns the natural logarithm of x.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Log</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Log(number,number)
> Returns the base-y logarithm of x.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Log</span>(<span class='o'>x</span>: <span class='kt'>number</span>,<span class='o'>y</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>x</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>y</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Log10(number)
> Returns the base-10 logarithm of x.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Log10</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Max(number,number)
> Returns the maximum value among its arguments.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Max</span>(<span class='o'>x</span>: <span class='kt'>number</span>,<span class='o'>y</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>x</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>y</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Min(number,number)
> Returns the minimum value among its arguments.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Min</span>(<span class='o'>x</span>: <span class='kt'>number</span>,<span class='o'>y</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>x</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>y</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Mod(number,number)
> Modulo of x % y
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Mod</span>(<span class='o'>x</span>: <span class='kt'>number</span>,<span class='o'>y</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>x</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>y</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Pow(number,number)
> Returns a specified number raised to the specified power.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Pow</span>(<span class='o'>x</span>: <span class='kt'>number</span>,<span class='o'>y</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>x</span> {:/} | {::nomarkdown} <span class='c'>A number to be raised to a power.</span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>y</span> {:/} | {::nomarkdown} <span class='c'>A number that specifies a power.</span> {:/} |
{:class="table table-bordered highlight"}

### Round(number)
> Rounds to the nearest integer
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Round</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Round(number,number)
> Rounds a value to a specified number of digits, and rounds midpoint values to the nearest even number.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Round</span>(<span class='o'>value</span>: <span class='kt'>number</span>,<span class='o'>decimals</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>decimals</span> {:/} | {::nomarkdown} <span class='c'>The number of digits in the return value</span> {:/} |
{:class="table table-bordered highlight"}

### Sign(number)
> Returns a value of 1 when x greater than zero, returns 0 when x equals zero, and returns -1 when x is less than zero.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Sign</span>(<span class='o'>x</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>x</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Sin(number)
> Returns the sine of x (assumed to be in radians).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Sin</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Sinh(number)
> Returns the hyperbolic sine of x.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Sinh</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Sqrt(number)
> Returns the square root of x. (You can also use the expression x^0.5 to compute this value.)
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Sqrt</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Tan(number)
> Returns the tangent of x (assumed to be in radians).
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Tan</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Tanh(number)
> Returns the hyperbolic tangent of x.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Tanh</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

### Truncate(number)
> Returns the integral part of a specified number.
<div class ="highlighter-rouge">
<div class ="highlight">
<pre class ="highlight">
<span class='nf'>Truncate</span>(<span class='o'>value</span>: <span class='kt'>number</span>) -> <span class='kt'>number</span>
</pre>
</div>
</div>

| Type | Name | Description
| --- | --- | --- |
| {::nomarkdown} <span class='kt'>number</span> {:/} | {::nomarkdown} <span class='o'>value</span> {:/} | {::nomarkdown} <span class='c'></span> {:/} |
{:class="table table-bordered highlight"}

