(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.57215881807559032523613495868630707263946533203125p371 {+ 2576774239881972 371 (7.56179e+111)}
; Y = -1.06322156785489152497348186443559825420379638671875p969 {- 284724629433068 969 (-5.30505e+291)}
; 1.57215881807559032523613495868630707263946533203125p371 < -1.06322156785489152497348186443559825420379638671875p969 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101110010 #b1001001001111001000000000001001111000000101011110100)))
(assert (= y (fp #b1 #b11111001000 #b0001000000101111010010011110011001010110101011101100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
