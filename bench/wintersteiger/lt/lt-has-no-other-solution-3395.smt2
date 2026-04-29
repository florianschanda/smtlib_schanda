(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0483725032599624515938785407342948019504547119140625p694 {+ 217850387656545 694 (8.61653e+208)}
; Y = -1.5982919033341997927522015743306837975978851318359375p-73 {- 2694467192914687 -73 (-1.69226e-022)}
; 1.0483725032599624515938785407342948019504547119140625p694 < -1.5982919033341997927522015743306837975978851318359375p-73 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010110101 #b0000110001100010001000111110111110000110111101100001)))
(assert (= y (fp #b1 #b01110110110 #b1001100100101001101010000111111001001000001011111111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
