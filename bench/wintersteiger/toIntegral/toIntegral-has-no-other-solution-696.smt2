(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1486968375916435380901248208829201757907867431640625 491 {- 669671022368897 491 (-7.34401e+147)}
; -1.1486968375916435380901248208829201757907867431640625 491 I == -1.1486968375916435380901248208829201757907867431640625 491
; [HW: -1.1486968375916435380901248208829201757907867431640625 491] 

; mpf : - 669671022368897 491
; mpfd: - 669671022368897 491 (-7.34401e+147) class: Neg. norm. non-zero
; hwf : - 669671022368897 491 (-7.34401e+147) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111101010 #b0010011000010000111111101111011001111001100010000001)))
(assert (= r (fp #b1 #b10111101010 #b0010011000010000111111101111011001111001100010000001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
