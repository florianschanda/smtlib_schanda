(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.96039084897071180790817379602231085300445556640625p-825 {- 4325215869554532 -825 (-8.76186e-249)}
; Y = 1.2785623884119556858962596379569731652736663818359375p685 {+ 1254533468651519 685 (2.05243e+206)}
; -1.96039084897071180790817379602231085300445556640625p-825 + 1.2785623884119556858962596379569731652736663818359375p685 == 1.278562388411955463851654712925665080547332763671875p685
; [HW: 1.278562388411955463851654712925665080547332763671875p685] 

; mpf : + 1254533468651518 685
; mpfd: + 1254533468651518 685 (2.05243e+206) class: Pos. norm. non-zero
; hwf : + 1254533468651518 685 (2.05243e+206) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011000110 #b1111010111011100001011001011011110110100111101100100)))
(assert (= y (fp #b0 #b11010101100 #b0100011101001111110111010101110000011111111111111111)))
(assert (= r (fp #b0 #b11010101100 #b0100011101001111110111010101110000011111111111111110)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
