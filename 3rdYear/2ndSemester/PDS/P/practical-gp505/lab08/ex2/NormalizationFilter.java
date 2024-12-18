package lab08.ex2;
import java.text.Normalizer;


class NormalizationFilter extends TextReaderDecorator {
    public NormalizationFilter(TextReaderInterface textReader) {
        super(textReader);
    }

    public String next() {
        String str = textReader.next();
        str = Normalizer.normalize(str, Normalizer.Form.NFD);
        str = str.replaceAll("[^\\p{ASCII}]", "");
        str = str.replaceAll("[\\p{Punct}]", ""); 
        return str;
    }
}
