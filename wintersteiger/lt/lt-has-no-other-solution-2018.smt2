(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.103289114622417077526961293187923729419708251953125p198 {+ 465172818124946 198 (4.43229e+059)}
; Y = -1.34653971757381185625490616075694561004638671875p693 {- 1560676142934496 693 (-5.53358e+208)}
; 1.103289114622417077526961293187923729419708251953125p198 < -1.34653971757381185625490616075694561004638671875p693 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011000101 #b0001101001110001001001111100100101010110000010010010)))
(assert (= y (fp #b1 #b11010110100 #b0101100010110110110100111011000110111110100111100000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
