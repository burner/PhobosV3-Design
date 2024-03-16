module stdv3.array;

auto array(Range)(Range r) {
	static assert(isIterable!Range);
	static assert(!isInfinite!Range);

	// branch here for string or normal array
}

auto assocArray(Range)(Range r);
auto assocArray(Keys, Values)(Keys keys, Values values);

E[] replace(E)(E[] subject, E from, E to);
E[] replaceFirst(E)(E[] subject, E from, E to);
E[] replaceLast(E)(E[] subject, E from, E to);
