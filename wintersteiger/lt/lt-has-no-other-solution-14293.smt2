(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.39684229354970934622315326123498380184173583984375p-802 {- 1787218805355324 -802 (-5.2371e-242)}
; Y = -1.758386225985776096791823874809779226779937744140625p1016 {- 3415467924752458 1016 (-1.23478e+306)}
; -1.39684229354970934622315326123498380184173583984375p-802 < -1.758386225985776096791823874809779226779937744140625p1016 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011011101 #b0110010110010111011101001110000001110111001100111100)))
(assert (= y (fp #b1 #b11111110111 #b1100001000100101100110011000011001011000100001001010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
