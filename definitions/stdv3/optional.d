module stdv3.optional;

struct Optional(T) {
	private T value;
	private bool _hasValue;

	T get(T defaultValue) {
		return this._hasValue
			? this.value
			: defaultValue;
	}

	typeof(this) opAssign(T value) {
		this.value = value;
		this._hasValue = true;
		return this;
	}

	bool hasValue() const {
		return this._hasValue;
	}
}
