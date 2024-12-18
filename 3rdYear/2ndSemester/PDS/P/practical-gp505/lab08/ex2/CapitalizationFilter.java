package lab08.ex2;

class CapitalizationFilter extends TextReaderDecorator {
    public CapitalizationFilter(TextReaderInterface textReader) {
        super(textReader);
    }

    public String next() {
        String str = textReader.next();
        if (str.length() == 1) {
            return str.toUpperCase();
        } else {
            return str.substring(0, 1).toUpperCase() + str.substring(1, str.length() - 1).toLowerCase() + str.substring(str.length() - 1).toUpperCase();
        }
    }
}