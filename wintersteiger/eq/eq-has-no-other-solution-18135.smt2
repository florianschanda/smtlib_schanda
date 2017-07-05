(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.166985381470642124668302130885422229766845703125p-756 {- 752035301767504 -756 (-3.07885e-228)}
; Y = -1.941323659986158300938541287905536592006683349609375p-468 {- 4239344884348694 -468 (-2.54718e-141)}
; -1.166985381470642124668302130885422229766845703125p-756 = -1.941323659986158300938541287905536592006683349609375p-468 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100001011 #b0010101010111111100011011101000001010011100101010000)))
(assert (= y (fp #b1 #b01000101011 #b1111000011111010100101100101111010010111011100010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
