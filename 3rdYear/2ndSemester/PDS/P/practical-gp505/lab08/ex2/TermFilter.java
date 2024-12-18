package lab08.ex2;


public class TermFilter extends TextReaderDecorator {
    public TermFilter(TextReaderInterface textReader) {
        super(textReader);
    }

    public String next() {
        return textReader.next().split("\\s+")[0];
    }
}
