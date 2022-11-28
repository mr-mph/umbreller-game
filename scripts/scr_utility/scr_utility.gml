
function rectangle_in_rectangle_ids(_id1, _id2){
	return rectangle_in_rectangle(
		_id1.bbox_left, _id1.bbox_top, _id1.bbox_right, _id1.bbox_bottom, 
		_id2.bbox_left, _id2.bbox_top, _id2.bbox_right, _id2.bbox_bottom
	);
}
