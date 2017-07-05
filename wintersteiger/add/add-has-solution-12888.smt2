(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1034686769920512006137869320809841156005859375p-479 {- 465981495145920 -479 (-7.06956e-145)}
; Y = -1.8025242997396582200764214576338417828083038330078125p-751 {- 3614248137263293 -751 (-1.52179e-226)}
; -1.1034686769920512006137869320809841156005859375p-479 + -1.8025242997396582200764214576338417828083038330078125p-751 == -1.1034686769920512006137869320809841156005859375p-479
; [HW: -1.1034686769920512006137869320809841156005859375p-479] 

; mpf : - 465981495145920 -479
; mpfd: - 465981495145920 -479 (-7.06956e-145) class: Neg. norm. non-zero
; hwf : - 465981495145920 -479 (-7.06956e-145) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000100000 #b0001101001111100111011000101011111010111010111000000)))
(assert (= y (fp #b1 #b00100010000 #b1100110101110010001110111000010110100000100010111101)))
(assert (= r (fp #b1 #b01000100000 #b0001101001111100111011000101011111010111010111000000)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
