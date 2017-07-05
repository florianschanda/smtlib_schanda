(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4686074036511256313275453067035414278507232666015625p-641 {+ 2110420128466265 -641 (1.60945e-193)}
; Y = 1.1798659264989848072247013988089747726917266845703125p410 {+ 810044119557477 410 (3.11983e+123)}
; 1.4686074036511256313275453067035414278507232666015625p-641 > 1.1798659264989848072247013988089747726917266845703125p410 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101111110 #b0111011111110110101001111010000101011000010101011001)))
(assert (= y (fp #b0 #b10110011001 #b0010111000001011101100010111111111111010010101100101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
