(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.62278280060288526698286659666337072849273681640625p296 {+ 2804764388727908 296 (2.06604e+089)}
; Y = 1.502116560995441663095562034868635237216949462890625p630 {+ 2261331956995626 630 (6.69269e+189)}
; 1.62278280060288526698286659666337072849273681640625p296 = 1.502116560995441663095562034868635237216949462890625p630 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100100111 #b1001111101101110101100011001000100011001110001100100)))
(assert (= y (fp #b0 #b11001110101 #b1000000010001010101101100000000001000001011000101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
