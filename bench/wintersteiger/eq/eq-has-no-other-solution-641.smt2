(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5767026481943184901268750763847492635250091552734375p110 {+ 2597237831511511 110 (2.04668e+033)}
; Y = 1.2572677895354846810960225411690771579742431640625p-919 {+ 1158631121086440 -919 (2.83702e-277)}
; 1.5767026481943184901268750763847492635250091552734375p110 = 1.2572677895354846810960225411690771579742431640625p-919 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001101101 #b1001001110100010110010001110010110000010110111010111)))
(assert (= y (fp #b0 #b00001101000 #b0100000111011100010011010100011001011110011111101000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
