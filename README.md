# Flutter CallBack Demo

A Flutter project illustrating use of callbacks.

## Getting Started

Callback functions can be used to send data from one method to another, one widget to another.
Callbacks are passed a arguments to other functions.

In this app, a callback has been used to send data from a child widget to a parent widget.

## App Description
The app has two containers which swap colors, between blue and pink, when one is clicked.

When the container is clicked, a callback function is called, that assigns colors to both containers, depending on
current container color.

In the parent widget, where the callback is defined, it triggers a setState() method that re-renders the parent widget with the assigned colors.

