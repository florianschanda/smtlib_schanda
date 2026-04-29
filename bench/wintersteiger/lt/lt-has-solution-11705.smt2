(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.78308322238799110692752947215922176837921142578125p70 {+ 3526693308546644 70 (2.10509e+021)}
; Y = 1.8526837048410722541547102082404308021068572998046875p718 {+ 3840146015387147 718 (2.55469e+216)}
; 1.78308322238799110692752947215922176837921142578125p70 < 1.8526837048410722541547102082404308021068572998046875p718 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001000101 #b1100100001111000001001000101111000110011111001010100)))
(assert (= y (fp #b0 #b11011001101 #b1101101001001001011110101011001000011111111000001011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
