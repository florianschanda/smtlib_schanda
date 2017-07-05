(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.979373936880910900271146601880900561809539794921875p256 {+ 4410708097193246 256 (2.29196e+077)}
; Y = -1.34767096366998995193853261298500001430511474609375p545 {- 1565770822431708 545 (-1.55214e+164)}
; 1.979373936880910900271146601880900561809539794921875p256 m -1.34767096366998995193853261298500001430511474609375p545 == -1.34767096366998995193853261298500001430511474609375p545
; [HW: -1.34767096366998995193853261298500001430511474609375p545] 

; mpf : - 1565770822431708 545
; mpfd: - 1565770822431708 545 (-1.55214e+164) class: Neg. norm. non-zero
; hwf : - 1565770822431708 545 (-1.55214e+164) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011111111 #b1111101010111000010000000001010101110101010100011110)))
(assert (= y (fp #b1 #b11000100000 #b0101100100000000111101101101101010111011001111011100)))
(assert (= r (fp #b1 #b11000100000 #b0101100100000000111101101101101010111011001111011100)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
