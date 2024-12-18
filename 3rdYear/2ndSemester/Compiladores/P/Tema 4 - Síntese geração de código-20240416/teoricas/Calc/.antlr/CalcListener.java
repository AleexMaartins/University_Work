// Generated from /home/alex/compiladores/pratica/tema4/Tema 4 - Síntese geração de código-20240416/Calc/Calc.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CalcParser}.
 */
public interface CalcListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link CalcParser#main}.
	 * @param ctx the parse tree
	 */
	void enterMain(CalcParser.MainContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcParser#main}.
	 * @param ctx the parse tree
	 */
	void exitMain(CalcParser.MainContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcParser#statList}.
	 * @param ctx the parse tree
	 */
	void enterStatList(CalcParser.StatListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcParser#statList}.
	 * @param ctx the parse tree
	 */
	void exitStatList(CalcParser.StatListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStat(CalcParser.StatContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStat(CalcParser.StatContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcParser#show}.
	 * @param ctx the parse tree
	 */
	void enterShow(CalcParser.ShowContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcParser#show}.
	 * @param ctx the parse tree
	 */
	void exitShow(CalcParser.ShowContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcParser#declaration}.
	 * @param ctx the parse tree
	 */
	void enterDeclaration(CalcParser.DeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcParser#declaration}.
	 * @param ctx the parse tree
	 */
	void exitDeclaration(CalcParser.DeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcParser#assignment}.
	 * @param ctx the parse tree
	 */
	void enterAssignment(CalcParser.AssignmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcParser#assignment}.
	 * @param ctx the parse tree
	 */
	void exitAssignment(CalcParser.AssignmentContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcParser#conditional}.
	 * @param ctx the parse tree
	 */
	void enterConditional(CalcParser.ConditionalContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcParser#conditional}.
	 * @param ctx the parse tree
	 */
	void exitConditional(CalcParser.ConditionalContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcParser#idList}.
	 * @param ctx the parse tree
	 */
	void enterIdList(CalcParser.IdListContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcParser#idList}.
	 * @param ctx the parse tree
	 */
	void exitIdList(CalcParser.IdListContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcParser#type}.
	 * @param ctx the parse tree
	 */
	void enterType(CalcParser.TypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcParser#type}.
	 * @param ctx the parse tree
	 */
	void exitType(CalcParser.TypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code addSubExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAddSubExpr(CalcParser.AddSubExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code addSubExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAddSubExpr(CalcParser.AddSubExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code integerExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIntegerExpr(CalcParser.IntegerExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code integerExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIntegerExpr(CalcParser.IntegerExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code signExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterSignExpr(CalcParser.SignExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code signExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitSignExpr(CalcParser.SignExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code realExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterRealExpr(CalcParser.RealExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code realExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitRealExpr(CalcParser.RealExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code booleanExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBooleanExpr(CalcParser.BooleanExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code booleanExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBooleanExpr(CalcParser.BooleanExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code multDivExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMultDivExpr(CalcParser.MultDivExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code multDivExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMultDivExpr(CalcParser.MultDivExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code comparisonExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterComparisonExpr(CalcParser.ComparisonExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code comparisonExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitComparisonExpr(CalcParser.ComparisonExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code powExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterPowExpr(CalcParser.PowExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code powExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitPowExpr(CalcParser.PowExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code parenExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParenExpr(CalcParser.ParenExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code parenExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParenExpr(CalcParser.ParenExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code idExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIdExpr(CalcParser.IdExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code idExpr}
	 * labeled alternative in {@link CalcParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIdExpr(CalcParser.IdExprContext ctx);
}