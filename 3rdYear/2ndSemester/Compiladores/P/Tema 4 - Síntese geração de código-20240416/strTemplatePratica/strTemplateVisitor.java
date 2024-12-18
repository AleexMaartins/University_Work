// Generated from strTemplate.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link strTemplateParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface strTemplateVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link strTemplateParser#csvFile}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCsvFile(strTemplateParser.CsvFileContext ctx);
	/**
	 * Visit a parse tree produced by {@link strTemplateParser#hdr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitHdr(strTemplateParser.HdrContext ctx);
	/**
	 * Visit a parse tree produced by {@link strTemplateParser#row}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRow(strTemplateParser.RowContext ctx);
	/**
	 * Visit a parse tree produced by {@link strTemplateParser#field}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitField(strTemplateParser.FieldContext ctx);
}