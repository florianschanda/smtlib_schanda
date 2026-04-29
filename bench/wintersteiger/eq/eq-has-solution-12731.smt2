(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.11865871324279897436326791648752987384796142578125p52 {- 534391336744532 52 (-5.03799e+015)}
; Y = -1.008736910588286850298800345626659691333770751953125p623 {- 39347547269778 623 (-3.51128e+187)}
; -1.11865871324279897436326791648752987384796142578125p52 = -1.008736910588286850298800345626659691333770751953125p623 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000110011 #b0001111001100000011010101101110011000011011001010100)))
(assert (= y (fp #b1 #b11001101110 #b0000001000111100100101010000100100111110101010010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
