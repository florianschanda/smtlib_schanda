(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.214620724001107543443822578410618007183074951171875p-443 {+ 966565812637374 -443 (5.34752e-134)}
; Y = -zero {- 0 -1023 (-0)}
; 1.214620724001107543443822578410618007183074951171875p-443 < -zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001000100 #b0011011011110001011000100011111010100000111010111110)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
