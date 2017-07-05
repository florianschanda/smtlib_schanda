(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.186384269585153194981330670998431742191314697265625p-685 {- 839400127051418 -685 (-7.39058e-207)}
; Y = -1.695856440123401309705286621465347707271575927734375p-61 {- 3133858804443110 -61 (-7.3546e-019)}
; -1.186384269585153194981330670998431742191314697265625p-685 > -1.695856440123401309705286621465347707271575927734375p-61 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101010010 #b0010111110110110111000010010011001011011011010011010)))
(assert (= y (fp #b1 #b01111000010 #b1011001000100011101001011100110100001010011111100110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
