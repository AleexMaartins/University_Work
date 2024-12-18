package lab08.ex2;

public abstract class TextReaderDecorator implements TextReaderInterface {
    protected TextReaderInterface textReader;

    public TextReaderDecorator(TextReaderInterface textReader) {
        this.textReader = textReader;
    }

    public boolean hasNext() {
        return textReader.hasNext();
    }

    public abstract String next();
}