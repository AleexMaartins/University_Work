// Generated from strTemplate.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link strTemplateParser}.
 */
public interface strTemplateListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link strTemplateParser#csvFile}.
	 * @param ctx the parse tree
	 */
	void enterCsvFile(strTemplateParser.CsvFileContext ctx);
	/**
	 * Exit a parse tree produced by {@link strTemplateParser#csvFile}.
	 * @param ctx the parse tree
	 */
	void exitCsvFile(strTemplateParser.CsvFileContext ctx);
	/**
	 * Enter a parse tree produced by {@link strTemplateParser#hdr}.
	 * @param ctx the parse tree
	 */
	void enterHdr(strTemplateParser.HdrContext ctx);
	/**
	 * Exit a parse tree produced by {@link strTemplateParser#hdr}.
	 * @param ctx the parse tree
	 */
	void exitHdr(strTemplateParser.HdrContext ctx);
	/**
	 * Enter a parse tree produced by {@link strTemplateParser#row}.
	 * @param ctx the parse tree
	 */
	void enterRow(strTemplateParser.RowContext ctx);
	/**
	 * Exit a parse tree produced by {@link strTemplateParser#row}.
	 * @param ctx the parse tree
	 */
	void exitRow(strTemplateParser.RowContext ctx);
	/**
	 * Enter a parse tree produced by {@link strTemplateParser#field}.
	 * @param ctx the parse tree
	 */
	void enterField(strTemplateParser.FieldContext ctx);
	/**
	 * Exit a parse tree produced by {@link strTemplateParser#field}.
	 * @param ctx the parse tree
	 */
	void exitField(strTemplateParser.FieldContext ctx);
}