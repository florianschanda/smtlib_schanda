(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.354585977522769102421307252370752394199371337890625p835 {+ 1596913276242346 835 (3.10351e+251)}
; Y = -1.5728839635479208158841402109828777611255645751953125p-518 {- 2580040004760949 -518 (-1.83299e-156)}
; 1.354585977522769102421307252370752394199371337890625p835 = -1.5728839635479208158841402109828777611255645751953125p-518 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101000010 #b0101101011000110001001011000100100010100100110101010)))
(assert (= y (fp #b1 #b00111111001 #b1001001010101000100001011111111111010111010101110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
