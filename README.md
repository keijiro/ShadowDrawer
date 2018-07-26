ShadowDrawer
============

ShadowDrawer is a custom shader for Unity, which draws regions of shadows with a given color.

![Screenshot](http://keijiro.github.io/ShadowDrawer/Screenshot.png)

System Requirements
-------------------

- Unity 5.1 or later versions.

Limitations
-----------

- Works only on Forward rendering path.
- Conflicts with skyboxes. Use a solid color or a screen-sized quad for a background.

Usage
-----

Create a material and change shader to Custom/ShadowDrawer. You can specify a color (rgb) and opacity (a) of shadows with the Shadow Color property. 

![Property](http://keijiro.github.io/ShadowDrawer/Property.png)

Set this material to objects that receives shadows. Besides that, you should turn off the Cast Shadows property on these objects.

![CastShadows](http://keijiro.github.io/ShadowDrawer/CastShadows.png)

This is not mandatory but gives proper results in most cases.

License
-------

Public domain
