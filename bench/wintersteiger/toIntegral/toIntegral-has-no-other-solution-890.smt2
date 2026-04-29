(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.003107006967427050625474294065497815608978271484375 285 {+ 13992715420742 285 (6.23586e+085)}
; 1.003107006967427050625474294065497815608978271484375 285 I == 1.003107006967427050625474294065497815608978271484375 285
; [HW: 1.003107006967427050625474294065497815608978271484375 285] 

; mpf : + 13992715420742 285
; mpfd: + 13992715420742 285 (6.23586e+085) class: Pos. norm. non-zero
; hwf : + 13992715420742 285 (6.23586e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011100 #b0000000011001011100111101110110101010000010001000110)))
(assert (= r (fp #b0 #b10100011100 #b0000000011001011100111101110110101010000010001000110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
