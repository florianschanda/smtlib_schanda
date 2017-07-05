(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1054850974710443978210605564527213573455810546875 419 {+ 475062645663736 419 (1.49665e+126)}
; 1.1054850974710443978210605564527213573455810546875 419 I == 1.1054850974710443978210605564527213573455810546875 419
; [HW: 1.1054850974710443978210605564527213573455810546875 419] 

; mpf : + 475062645663736 419
; mpfd: + 475062645663736 419 (1.49665e+126) class: Pos. norm. non-zero
; hwf : + 475062645663736 419 (1.49665e+126) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110100010 #b0001101100000001000100100100001111011010011111111000)))
(assert (= r (fp #b0 #b10110100010 #b0001101100000001000100100100001111011010011111111000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
