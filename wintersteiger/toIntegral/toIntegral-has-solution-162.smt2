(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9419014793680002828324404617887921631336212158203125 904 {+ 4241947151501445 904 (2.62629e+272)}
; 1.9419014793680002828324404617887921631336212158203125 904 I == 1.9419014793680002828324404617887921631336212158203125 904
; [HW: 1.9419014793680002828324404617887921631336212158203125 904] 

; mpf : + 4241947151501445 904
; mpfd: + 4241947151501445 904 (2.62629e+272) class: Pos. norm. non-zero
; hwf : + 4241947151501445 904 (2.62629e+272) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110000111 #b1111000100100000011101001001000111110000100010000101)))
(assert (= r (fp #b0 #b11110000111 #b1111000100100000011101001001000111110000100010000101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
