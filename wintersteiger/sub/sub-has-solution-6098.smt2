(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7548883826393180118685677371104247868061065673828125p-473 {+ 3399715038760749 -473 (7.19551e-143)}
; Y = -zero {- 0 -1023 (-0)}
; 1.7548883826393180118685677371104247868061065673828125p-473 - -zero == 1.7548883826393180118685677371104247868061065673828125p-473
; [HW: 1.7548883826393180118685677371104247868061065673828125p-473] 

; mpf : + 3399715038760749 -473
; mpfd: + 3399715038760749 -473 (7.19551e-143) class: Pos. norm. non-zero
; hwf : + 3399715038760749 -473 (7.19551e-143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100110 #b1100000101000000010111010111001110010000111100101101)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b01000100110 #b1100000101000000010111010111001110010000111100101101)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
