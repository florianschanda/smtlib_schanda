(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.274569927242465094963108640513382852077484130859375p222 {- 1236553022016310 222 (-8.59058e+066)}
; Y = -1.622037260887456699975928131607361137866973876953125p1 {- 2801406776343314 1 (-3.24407)}
; -1.274569927242465094963108640513382852077484130859375p222 = -1.622037260887456699975928131607361137866973876953125p1 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011011101 #b0100011001001010001101101111100111111000101100110110)))
(assert (= y (fp #b1 #b10000000000 #b1001111100111101110101010111110001100111101100010010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
