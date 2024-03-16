module stdv3.string;

string fromStringz(char* cString) @system pure nothrow;

immutable(char)* toStringz(const(char)[] s) @system pure nothrow;

enum CaseSensitive {
	no,
	yes
}

Optional!(size_t) indexOf(string haystack, char needle);
Optional!(size_t) indexOf(string haystack, string bigNeedle);
Optional!(size_t) indexOf(string haystack, char needle, CaseSensitive cs);
Optional!(size_t) indexOf(string haystack, string bigNeedle, CaseSensitive cs);
Optional!(size_t) lastIndexOf(string haystack, char needle);
Optional!(size_t) lastIndexOf(string haystack, string bigNeedle);
Optional!(size_t) lastIndexOf(string haystack, char needle, CaseSensitive cs);
Optional!(size_t) lastIndexOf(string haystack, string bigNeedle, CaseSensitive cs);


string stripLeft(string input);
string stripLeft(string input, char toStrip);
string stripLeft(string input, string toStrip);

string stripRight(string input);
string stripRight(string input, char toStrip);
string stripRight(string input, string toStrip);

string strip(string input) {
	return input.stripLeft().stripRight();
}

string assumeUTF8(byte[] arr);
