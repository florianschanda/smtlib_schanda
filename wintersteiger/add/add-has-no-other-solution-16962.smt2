(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2925640179607948976325815237942151725292205810546875p411 {- 1317591202270251 411 (-6.83566e+123)}
; Y = 1.5911650252560460838680000961176119744777679443359375p-77 {+ 2662370587457599 -77 (1.05294e-023)}
; -1.2925640179607948976325815237942151725292205810546875p411 + 1.5911650252560460838680000961176119744777679443359375p-77 == -1.2925640179607948976325815237942151725292205810546875p411
; [HW: -1.2925640179607948976325815237942151725292205810546875p411] 

; mpf : - 1317591202270251 411
; mpfd: - 1317591202270251 411 (-6.83566e+123) class: Neg. norm. non-zero
; hwf : - 1317591202270251 411 (-6.83566e+123) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110011010 #b0100101011100101011110011011100100100000110000101011)))
(assert (= y (fp #b0 #b01110110010 #b1001011101010110100101110101001000000011100000111111)))
(assert (= r (fp #b1 #b10110011010 #b0100101011100101011110011011100100100000110000101011)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
