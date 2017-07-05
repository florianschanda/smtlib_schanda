(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7570657797507591713070951300323940813541412353515625 432 {+ 3409521163580473 432 (1.94871e+130)}
; 1.7570657797507591713070951300323940813541412353515625 432 I == 1.7570657797507591713070951300323940813541412353515625 432
; [HW: 1.7570657797507591713070951300323940813541412353515625 432] 

; mpf : + 3409521163580473 432
; mpfd: + 3409521163580473 432 (1.94871e+130) class: Pos. norm. non-zero
; hwf : + 3409521163580473 432 (1.94871e+130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110101111 #b1100000111001111000100000001110011110011010000111001)))
(assert (= r (fp #b0 #b10110101111 #b1100000111001111000100000001110011110011010000111001)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
