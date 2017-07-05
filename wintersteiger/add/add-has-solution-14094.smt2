(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5681403689392199307661712737171910703182220458984375p-526 {- 2558676753848807 -526 (-7.1385e-159)}
; Y = 1.7783789039028530254427096224389970302581787109375p-914 {+ 3505506941569944 -914 (1.28413e-275)}
; -1.5681403689392199307661712737171910703182220458984375p-526 + 1.7783789039028530254427096224389970302581787109375p-914 == -1.568140368939219708721566348685882985591888427734375p-526
; [HW: -1.568140368939219708721566348685882985591888427734375p-526] 

; mpf : - 2558676753848806 -526
; mpfd: - 2558676753848806 -526 (-7.1385e-159) class: Neg. norm. non-zero
; hwf : - 2558676753848806 -526 (-7.1385e-159) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111110001 #b1001000101110001101001011011000000100001100111100111)))
(assert (= y (fp #b0 #b00001101101 #b1100011101000011110101110000000000101000101110011000)))
(assert (= r (fp #b1 #b00111110001 #b1001000101110001101001011011000000100001100111100110)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
