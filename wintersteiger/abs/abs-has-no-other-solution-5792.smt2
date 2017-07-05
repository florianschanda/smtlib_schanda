(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9066129543080452268810631721862591803073883056640625p702 {- 4083021763190977 702 (-4.01162e+211)}
; -1.9066129543080452268810631721862591803073883056640625p702 | == 1.9066129543080452268810631721862591803073883056640625p702
; [HW: 1.9066129543080452268810631721862591803073883056640625p702] 

; mpf : + 4083021763190977 702
; mpfd: + 4083021763190977 702 (4.01162e+211) class: Pos. norm. non-zero
; hwf : + 4083021763190977 702 (4.01162e+211) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111101 #b1110100000010111110010010101110011100010000011000001)))
(assert (= r (fp #b0 #b11010111101 #b1110100000010111110010010101110011100010000011000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
