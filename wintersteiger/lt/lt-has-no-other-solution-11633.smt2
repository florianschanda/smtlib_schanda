(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3219516166634648346445146671612747013568878173828125p905 {- 1449941180836909 905 (-3.5757e+272)}
; Y = -1.5966644153341793543887661144253797829151153564453125p726 {- 2687137638564245 726 (-5.63625e+218)}
; -1.3219516166634648346445146671612747013568878173828125p905 < -1.5966644153341793543887661144253797829151153564453125p726 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110001000 #b0101001001101011011010111101000001110110110000101101)))
(assert (= y (fp #b1 #b11011010101 #b1001100010111110111111111100011010001100000110010101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
