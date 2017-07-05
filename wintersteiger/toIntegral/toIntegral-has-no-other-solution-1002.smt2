(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.88378523127190344865766746806912124156951904296875 85 {- 3980214838231692 85 (-7.28754e+025)}
; -1.88378523127190344865766746806912124156951904296875 85 I == -1.88378523127190344865766746806912124156951904296875 85
; [HW: -1.88378523127190344865766746806912124156951904296875 85] 

; mpf : - 3980214838231692 85
; mpfd: - 3980214838231692 85 (-7.28754e+025) class: Neg. norm. non-zero
; hwf : - 3980214838231692 85 (-7.28754e+025) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001010100 #b1110001000111111101111111011100100000000001010001100)))
(assert (= r (fp #b1 #b10001010100 #b1110001000111111101111111011100100000000001010001100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
