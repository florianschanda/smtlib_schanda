(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0799960616079784525567220043740235269069671630859375p68 {+ 360270233248799 68 (3.18759e+020)}
; Y = -1.9199110610722069925060395689797587692737579345703125p844 {- 4142911111858789 844 (-2.25215e+254)}
; 1.0799960616079784525567220043740235269069671630859375p68 > -1.9199110610722069925060395689797587692737579345703125p844 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001000011 #b0001010001111010100111110011010001101010010000011111)))
(assert (= y (fp #b1 #b11101001011 #b1110101101111111010010101001001010001000101001100101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
