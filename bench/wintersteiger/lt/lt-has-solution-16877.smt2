(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.420955749859054595418683675234206020832061767578125p115 {+ 1895816158204706 115 (5.90242e+034)}
; Y = 1.296733540130072359630730716162361204624176025390625p-649 {+ 1336369060758122 -649 (5.55116e-196)}
; 1.420955749859054595418683675234206020832061767578125p115 < 1.296733540130072359630730716162361204624176025390625p-649 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001110010 #b0110101111000011110000011000101010110101001100100010)))
(assert (= y (fp #b0 #b00101110110 #b0100101111110110101110101011001001111100001001101010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
