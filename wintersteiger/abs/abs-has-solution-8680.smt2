(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5406050308027976480929055469459854066371917724609375p-486 {- 2434668615278095 -486 (-7.71105e-147)}
; -1.5406050308027976480929055469459854066371917724609375p-486 | == 1.5406050308027976480929055469459854066371917724609375p-486
; [HW: 1.5406050308027976480929055469459854066371917724609375p-486] 

; mpf : + 2434668615278095 -486
; mpfd: + 2434668615278095 -486 (7.71105e-147) class: Pos. norm. non-zero
; hwf : + 2434668615278095 -486 (7.71105e-147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000011001 #b1000101001100101000101110101111101011001111000001111)))
(assert (= r (fp #b0 #b01000011001 #b1000101001100101000101110101111101011001111000001111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
