// Generated from Translation.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link TranslationParser}.
 */
public interface TranslationListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link TranslationParser#text}.
	 * @param ctx the parse tree
	 */
	void enterText(TranslationParser.TextContext ctx);
	/**
	 * Exit a parse tree produced by {@link TranslationParser#text}.
	 * @param ctx the parse tree
	 */
	void exitText(TranslationParser.TextContext ctx);
}