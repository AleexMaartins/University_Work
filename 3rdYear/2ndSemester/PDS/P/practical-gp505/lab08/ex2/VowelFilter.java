package lab08.ex2;


public class VowelFilter extends TextReaderDecorator {
    public VowelFilter(TextReaderInterface textReader) {
        super(textReader);
    }

    public String next() {
        return textReader.next().replaceAll("[AEIOUaeiou]", "");
    }
}