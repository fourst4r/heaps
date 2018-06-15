package hxd.impl;

class AnyProps {

	public var props(default, set) : Any;

	function set_props(p) {
		this.props = p;
		refreshProps();
		return p;
	}

	public function getDefaultProps( ?kind : String ) : Any {
		return {};
	}

	public function refreshProps() {
	}

	#if js
	public function editProps() {
		return new js.jquery.JQuery('<p>No properties for this object</p>');
	}
	#end

}