@SuppressWarnings("CheckReturnValue")
public class Execute extends TranslationBaseVisitor<String> {

   @Override public String visitText(TranslationParser.TextContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }
}
