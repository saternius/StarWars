class Missiler extends MovieClip
{
	var speed;
	var yspeed;
	function onLoad()
	{
		speed = 20;
		_rotation=_root.kn.gc._rotation;
		_y+=_root.kn.gc._rotation/1.2;
		_x+=_root.kn.gc._rotation/3;
		yspeed=_root.kn.gc._rotation/2;
	}
	function onEnterFrame()
	{
		_x +=speed;
		_y+=yspeed;
		if(this.hitTest( _root.ab)){
			_root.ab._y=800;
			var explosion = _root.attachMovie( "Explosion" , "Explosion" + 	_root.getNextHighestDepth(), _root.getNextHighestDepth());
			explosion._x=_x;
			explosion._y=_y;
			this.removeMovieClip();
		}
		if(this.hitTest( _root.cd)){
			_root.cd._y=800;
			var explosion = _root.attachMovie( "Explosion" , "Explosion" + 	_root.getNextHighestDepth(), _root.getNextHighestDepth());
			explosion._x=_x;
			explosion._y=_y;
			this.removeMovieClip();
		}
		if(this.hitTest( _root.ef)){
			_root.ef._y=800;
			var explosion = _root.attachMovie( "Explosion" , "Explosion" + 	_root.getNextHighestDepth(), _root.getNextHighestDepth());
			explosion._x=_x;
			explosion._y=_y;
			this.removeMovieClip();
		}
		if(this.hitTest( _root.gh)){
			_root.gh._y=800;
			var explosion = _root.attachMovie( "Explosion" , "Explosion" + 	_root.getNextHighestDepth(), _root.getNextHighestDepth());
			explosion._x=_x;
			explosion._y=_y;
			this.removeMovieClip();
		}
		if(_x>600)
		{
			this.removeMovieClip();
		}
		
	}
	
}