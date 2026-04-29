(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4269847501064132355708125032833777368068695068359375p266 {- 1922968361472127 266 (-1.69199e+080)}
; -1.4269847501064132355708125032833777368068695068359375p266 | == 1.4269847501064132355708125032833777368068695068359375p266
; [HW: 1.4269847501064132355708125032833777368068695068359375p266] 

; mpf : + 1922968361472127 266
; mpfd: + 1922968361472127 266 (1.69199e+080) class: Pos. norm. non-zero
; hwf : + 1922968361472127 266 (1.69199e+080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100001001 #b0110110101001110110111110110000110011001000001111111)))
(assert (= r (fp #b0 #b10100001001 #b0110110101001110110111110110000110011001000001111111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
