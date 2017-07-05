(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.359938158590396906078012762009166181087493896484375p-912 {- 1621017356904134 -912 (-3.92792e-275)}
; -1.359938158590396906078012762009166181087493896484375p-912 | == 1.359938158590396906078012762009166181087493896484375p-912
; [HW: 1.359938158590396906078012762009166181087493896484375p-912] 

; mpf : + 1621017356904134 -912
; mpfd: + 1621017356904134 -912 (3.92792e-275) class: Pos. norm. non-zero
; hwf : + 1621017356904134 -912 (3.92792e-275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001101111 #b0101110000100100111010000011101110111010011011000110)))
(assert (= r (fp #b0 #b00001101111 #b0101110000100100111010000011101110111010011011000110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
