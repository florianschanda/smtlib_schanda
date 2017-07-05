(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1433557859665930411807721611694432795047760009765625 291 {- 645617064260553 291 (-4.54894e+087)}
; -1.1433557859665930411807721611694432795047760009765625 291 I == -1.1433557859665930411807721611694432795047760009765625 291
; [HW: -1.1433557859665930411807721611694432795047760009765625 291] 

; mpf : - 645617064260553 291
; mpfd: - 645617064260553 291 (-4.54894e+087) class: Neg. norm. non-zero
; hwf : - 645617064260553 291 (-4.54894e+087) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100010 #b0010010010110010111101101111110001101011001111001001)))
(assert (= r (fp #b1 #b10100100010 #b0010010010110010111101101111110001101011001111001001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
