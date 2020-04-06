cam = view_camera[0];
camW = camera_get_view_width(cam);
camH = camera_get_view_height(cam);

target = objPlayer;
origWidth = objManager.idealWidth;
origHeight = objManager.idealHeight;
zoom = 1;  //max size
panSpd = 0.06;
zoomSpd = 0.05;
targetZoom = zoom;	//CHANGE TARGETZOOM INORDER TO ZOOM IN AND OUT
					//WARNING: HAVENT ADDED ZOOM CLAMPING YET. 
