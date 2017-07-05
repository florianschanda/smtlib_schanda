(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2799721948588074216246468495228327810764312744140625 333 {- 1260882672440225 333 (-2.2397e+100)}
; -1.2799721948588074216246468495228327810764312744140625 333 I == -1.2799721948588074216246468495228327810764312744140625 333
; [HW: -1.2799721948588074216246468495228327810764312744140625 333] 

; mpf : - 1260882672440225 333
; mpfd: - 1260882672440225 333 (-2.2397e+100) class: Neg. norm. non-zero
; hwf : - 1260882672440225 333 (-2.2397e+100) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101001100 #b0100011110101100010000011111110010110101001110100001)))
(assert (= r (fp #b1 #b10101001100 #b0100011110101100010000011111110010110101001110100001)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
