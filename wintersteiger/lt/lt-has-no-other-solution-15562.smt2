(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.16458895075811508235119617893360555171966552734375p703 {- 741242737303548 703 (-4.90072e+211)}
; Y = 1.4673090632462117977041771155199967324733734130859375p-17 {+ 2104572923102495 -17 (1.11947e-005)}
; -1.16458895075811508235119617893360555171966552734375p703 < 1.4673090632462117977041771155199967324733734130859375p-17 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010111110 #b0010101000100010100000000110000011001001111111111100)))
(assert (= y (fp #b0 #b01111101110 #b0111011110100001100100010001011111000100010100011111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
