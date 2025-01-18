# VisualHelpers
A Matlab library to handle matlab graphic objects ergonomically, including common axes, plots, colors, transparency functions.

So what's wrong with the original functions/commands?

Run `loadlib` to add all subfolders and submodules.
### About axes
Well, first of all, I don't like to track what graphic objects is active all the time in my mind, and it could be a bit hard to tell when you're inside of a function. Therefore, in this library, graphic objects such as axes or figures are required as the argument (usually the first one) for a graphic function. 

The other thing is that commands like `hold on` is not symmetric, usually it's used like this.
```matlab
some_plotting(some_data, options);
hold on
some_other_plotting(some_data, options);
some_more_plotting(some_data, options);
hold off
```
It visually doesn't look like these plots are acting on the same object. I'd like to have them grouped like this.
```matlab
openax(ax)
some_plotting(ax, some_data, options);
some_other_plotting(ax, some_data, options);
some_more_plotting(ax, some_data, options);
shutax(ax)
```
And I want to avoid clearing what's already been plot, I use `keepax` instead of `openax`. This way it's very clear that this cluster of code is all working on this plot.
Another benefit is that you can plot on two things at once.
```matlab
openax([ax1, ax2])
some_plotting(ax_1, some_data, options);
some_other_plotting(ax_1, some_data, options);
some_other_plotting_on_2(ax_2, modify_form(some_data), options);
some_more_plotting(ax_1, some_data, options);
shutax([ax1, ax2])
```

I've also add a function `setaxis` to create and return an axes directly, meanwhile setting the figure's number and title.
### About Figure
Some methods for clearing all objects in a figure, which is not trivial.
### About Colors
I don't think there is a good method to create an array of colors with a variation on hue in Matlab. Here are some functions that help representing data with colors in a slightly more flexible way (Although now there are better color sciences than the simple HSL that I use). You can use `clrcvars` to just vary on hue, or `clrmapquery` to interpolate on any colormap. This library includes the magnificent [Crameri](https://github.com/chadagreene/crameri) perceptually uniform scientific colormap library as a submodule.
Also, colorbar can behave unexpectedly and spawn several times and overlap. Use `clrbarifnone` to make sure that only one appears.
### Plots
Some helper functions on common plots.  
