type var =
| Var of 'string 
;;

type cst =
| Bot
| Top 
;;

type term =
| Cst of var
| Fon of 'string*(term list)
;;

type pred =
| Pred of 'string*(term list)
| Cst of cst 
| Neg of pred
| And of pred*pred
| Or of pred*pred
| Forall of var*pred
| Exists of var*pred 
;;

