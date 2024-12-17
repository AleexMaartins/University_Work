@SuppressWarnings("CheckReturnValue")
public class Execute extends PrefixCalculatorBaseVisitor<Integer> {

   @Override public Integer visitProgram(PrefixCalculatorParser.ProgramContext ctx) {
      Integer res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Integer visitStat(PrefixCalculatorParser.StatContext ctx) {
      //Integer res = null;
      //return visitChildren(ctx);
      //return res;

      // printar o res
      Integer res = null;
      if(ctx.expr() == null)
      {
         return null;
      }
      res = visit(ctx.expr());
      System.out.println("Res:" + " " + res );
      return null;
   }

   @Override public Integer visitExprAddSub(PrefixCalculatorParser.ExprAddSubContext ctx) {
      //Integer res = null;
      //return visitChildren(ctx);
      //return res;
      
      // Adiciona e subtrai
      Integer res = 0;
      Integer n1 = visit(ctx.expr(0));
      Integer n2 = visit(ctx.expr(1));
      String op = ctx.op.getText();
      switch (op) {
         case "+":
            res = n1 + n2;
            break;
         case "-":
            res = n1-n2;
            break;
         default:
            System.out.println("Operador inválido!!!!");
            break;
      }
      return res;
      
   
   }

   @Override public Integer visitExprMultiDivMod(PrefixCalculatorParser.ExprMultiDivModContext ctx) {
      //Integer res = null;
      //return visitChildren(ctx)
      //return res;
   
      Integer res = 0;
      Integer n1 = visit(ctx.expr(0));
      Integer n2 = visit(ctx.expr(1));
      String op = ctx.op.getText();
      switch (op) {
         case "*":
            res = n1*n2;
            break;
         case "/":
            if (n2 == 0) {System.out.println("n2 cant be 0!!"); break;}
            res = n1/n2;
            break;    
         case "%":
            if (n2 == 0) {System.out.println("n2 cant be 0!!"); break;}
            res = n1%n2;
            break;  
         default:
            System.out.println("Operador inválido!");
            break;
      }
      return res;
   }

   @Override public Integer visitExprParent(PrefixCalculatorParser.ExprParentContext ctx) {
      Integer res  = visit(ctx.expr());
      return res;
      //return visitChildren(ctx);
      //return res;
   }

   @Override public Integer visitExprInteger(PrefixCalculatorParser.ExprIntegerContext ctx) {

      // retorna um inteiro
      return Integer.parseInt(ctx.Integer().getText());
      }
   }

