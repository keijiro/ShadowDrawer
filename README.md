ShadowDrawer
============

ShadowDrawer is a custom shader for Unity, which draws regions of shadows with a given color.

System Requirements
-------------------

- Unity 5.0 or later versions.

Limitations
-----------

- Works only on Forward rendering path.
- Conflicts with skyboxes. Use a solid color or a screen-sized quad for a background.

Usage
-----

Create a material and change shader to Custom/ShadowDrawer. You can specify a color (rgb) and opacity (a) of shadows with the Shadow Color property. 

Set this material to objects that receives shadows. Besides that, you should turn off the Cast Shadows property on these objects.

This is not mandatory but gives better results in most cases.

License
-------

Copyright (C) 2015 Keijiro Takahashi

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
