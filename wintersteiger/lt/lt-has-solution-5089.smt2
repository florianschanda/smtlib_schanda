(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6407917449495579287344071417464874684810638427734375p-767 {+ 2885869463776919 -767 (2.11372e-231)}
; Y = 1.1319564504990571318643333142972551286220550537109375p301 {+ 594279021296687 301 (4.61167e+090)}
; 1.6407917449495579287344071417464874684810638427734375p-767 < 1.1319564504990571318643333142972551286220550537109375p301 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100000000 #b1010010000001010111011011000010000011010111010010111)))
(assert (= y (fp #b0 #b10100101100 #b0010000111000111111001011101111101100011110000101111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
