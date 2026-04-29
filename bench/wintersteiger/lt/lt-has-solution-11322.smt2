(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1938191636664183814531270400038920342922210693359375p201 {- 872883913265343 201 (-3.83679e+060)}
; Y = -1.6201892255376704188307712684036232531070709228515625p435 {- 2793083965030649 435 (-1.43752e+131)}
; -1.1938191636664183814531270400038920342922210693359375p201 < -1.6201892255376704188307712684036232531070709228515625p435 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011001000 #b0011000110011110001000011111100101001001000010111111)))
(assert (= y (fp #b1 #b10110110010 #b1001111011000100101110001001100100000100000011111001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
