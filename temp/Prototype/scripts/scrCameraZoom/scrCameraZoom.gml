
zoom += (targetZoom - zoom) *zoomSpd;

camera_set_view_size(cam,origWidth*zoom,origHeight*zoom);

/*var mouseInput = mouse_wheel_down()-mouse_wheel_up();
targetZoom += mouseInput;
targetZoom = clamp(targetZoom, 0.1, 1.4);
*/