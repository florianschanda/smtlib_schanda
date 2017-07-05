(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.956763711154165807926119668991304934024810791015625p130 {- 4308880693035514 130 (-2.66341e+039)}
; Y = -1.5433840304243544583329139641136862337589263916015625p-628 {- 2447184116938201 -628 (-1.3856e-189)}
; -1.956763711154165807926119668991304934024810791015625p130 + -1.5433840304243544583329139641136862337589263916015625p-628 == -1.956763711154165807926119668991304934024810791015625p130
; [HW: -1.956763711154165807926119668991304934024810791015625p130] 

; mpf : - 4308880693035514 130
; mpfd: - 4308880693035514 130 (-2.66341e+039) class: Neg. norm. non-zero
; hwf : - 4308880693035514 130 (-2.66341e+039) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010000001 #b1111010011101110011101110111000101101000000111111010)))
(assert (= y (fp #b1 #b00110001011 #b1000101100011011001101110011111111010111010111011001)))
(assert (= r (fp #b1 #b10010000001 #b1111010011101110011101110111000101101000000111111010)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
