(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.912859097752033221695455722510814666748046875p-1009 {- 4111151892477824 -1009 (-3.48672e-304)}
; Y = -1.33070811335520122753450777963735163211822509765625p65 {- 1489376936074884 65 (-4.90945e+019)}
; -1.912859097752033221695455722510814666748046875p-1009 < -1.33070811335520122753450777963735163211822509765625p65 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000001110 #b1110100110110001001000100100001010110011011110000000)))
(assert (= y (fp #b1 #b10001000000 #b0101010010101001010010010111001101100001111010000100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
