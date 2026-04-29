(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3984207158716766006278930944972671568393707275390625p-258 {+ 1794327387536369 -258 (3.01925e-078)}
; Y = 1.399197282814010900864332143100909888744354248046875p-180 {+ 1797824734128494 -180 (9.13019e-055)}
; 1.3984207158716766006278930944972671568393707275390625p-258 > 1.399197282814010900864332143100909888744354248046875p-180 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011111101 #b0110010111111110111001100110100010110111101111110001)))
(assert (= y (fp #b0 #b01101001011 #b0110011000110001110010110000101001010110100101101110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
