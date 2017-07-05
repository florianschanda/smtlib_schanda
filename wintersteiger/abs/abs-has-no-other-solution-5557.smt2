(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.590212185160755353763306629844009876251220703125p-346 {+ 2658079377159504 -346 (1.10937e-104)}
; 1.590212185160755353763306629844009876251220703125p-346 | == 1.590212185160755353763306629844009876251220703125p-346
; [HW: 1.590212185160755353763306629844009876251220703125p-346] 

; mpf : + 2658079377159504 -346
; mpfd: + 2658079377159504 -346 (1.10937e-104) class: Pos. norm. non-zero
; hwf : + 2658079377159504 -346 (1.10937e-104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010100101 #b1001011100011000001001010101000011110111010101010000)))
(assert (= r (fp #b0 #b01010100101 #b1001011100011000001001010101000011110111010101010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
