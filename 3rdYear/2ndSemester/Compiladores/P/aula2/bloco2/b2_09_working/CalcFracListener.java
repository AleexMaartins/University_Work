// Generated from CalcFrac.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CalcFracParser}.
 */
public interface CalcFracListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link CalcFracParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(CalcFracParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcFracParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(CalcFracParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by the {@code StatPrint}
	 * labeled alternative in {@link CalcFracParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStatPrint(CalcFracParser.StatPrintContext ctx);
	/**
	 * Exit a parse tree produced by the {@code StatPrint}
	 * labeled alternative in {@link CalcFracParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStatPrint(CalcFracParser.StatPrintContext ctx);
	/**
	 * Enter a parse tree produced by the {@code StatAssign}
	 * labeled alternative in {@link CalcFracParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterStatAssign(CalcFracParser.StatAssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code StatAssign}
	 * labeled alternative in {@link CalcFracParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitStatAssign(CalcFracParser.StatAssignContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcFracParser#print}.
	 * @param ctx the parse tree
	 */
	void enterPrint(CalcFracParser.PrintContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcFracParser#print}.
	 * @param ctx the parse tree
	 */
	void exitPrint(CalcFracParser.PrintContext ctx);
	/**
	 * Enter a parse tree produced by {@link CalcFracParser#assignment}.
	 * @param ctx the parse tree
	 */
	void enterAssignment(CalcFracParser.AssignmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link CalcFracParser#assignment}.
	 * @param ctx the parse tree
	 */
	void exitAssignment(CalcFracParser.AssignmentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprAddSub}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprAddSub(CalcFracParser.ExprAddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprAddSub}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprAddSub(CalcFracParser.ExprAddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExpExponent}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpExponent(CalcFracParser.ExpExponentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExpExponent}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpExponent(CalcFracParser.ExpExponentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprRead}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprRead(CalcFracParser.ExprReadContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprRead}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprRead(CalcFracParser.ExprReadContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprParent(CalcFracParser.ExprParentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprParent}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprParent(CalcFracParser.ExprParentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprMultDiv}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprMultDiv(CalcFracParser.ExprMultDivContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprMultDiv}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprMultDiv(CalcFracParser.ExprMultDivContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprInteger}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprInteger(CalcFracParser.ExprIntegerContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprInteger}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprInteger(CalcFracParser.ExprIntegerContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprReduce}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprReduce(CalcFracParser.ExprReduceContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprReduce}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprReduce(CalcFracParser.ExprReduceContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprID(CalcFracParser.ExprIDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprID}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprID(CalcFracParser.ExprIDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprFraction}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprFraction(CalcFracParser.ExprFractionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprFraction}
	 * labeled alternative in {@link CalcFracParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprFraction(CalcFracParser.ExprFractionContext ctx);
}