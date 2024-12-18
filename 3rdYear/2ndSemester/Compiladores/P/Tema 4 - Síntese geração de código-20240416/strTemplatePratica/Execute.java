import java.io.FileReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import com.opencsv.*; 

@SuppressWarnings("CheckReturnValue")
public class Execute extends strTemplateBaseVisitor<String> {

   @Override public String visitCsvFile(strTemplateParser.CsvFileContext ctx) {
      String s1 = visit(ctx.expr(0));
		String s2 = visit(ctx.expr(1));
		if (ctx.op.getText().equals("-")) {
			return String.valueOf(Double.parseDouble(s1) - Double.parseDouble(s2));
		}
		return String.valueOf(Double.parseDouble(s1) + Double.parseDouble(s2));




      List<List<String>> records = new ArrayList<List<String>>();
      try (CSVReader csvReader = new CSVReader(new FileReader("book.csv"));) {
         String[] values = null;
         while ((values = csvReader.readNext()) != null) {
            records.add(Arrays.asList(values));
         }
      }
   }

   @Override public String visitHdr(strTemplateParser.HdrContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitRow(strTemplateParser.RowContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitField(strTemplateParser.FieldContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }
}
