(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6480470143082459610894829893368296325206756591796875p-675 {+ 2918544292157179 -675 (1.05129e-203)}
; Y = -1.6620878357260153723728990371455438435077667236328125p-139 {- 2981778530262221 -139 (-2.38498e-042)}
; 1.6480470143082459610894829893368296325206756591796875p-675 * -1.6620878357260153723728990371455438435077667236328125p-139 == -1.36959944759315721540815502521581947803497314453125p-813
; [HW: -1.36959944759315721540815502521581947803497314453125p-813] 

; mpf : - 1664527934456884 -813
; mpfd: - 1664527934456884 -813 (-2.5073e-245) class: Neg. norm. non-zero
; hwf : - 1664527934456884 -813 (-2.5073e-245) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011100 #b1010010111100110011010001011110010111001011011111011)))
(assert (= y (fp #b1 #b01101110100 #b1010100101111110100101101010000110000101110011001101)))
(assert (= r (fp #b1 #b00011010010 #b0101111010011110000100011100010000001000010000110100)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
