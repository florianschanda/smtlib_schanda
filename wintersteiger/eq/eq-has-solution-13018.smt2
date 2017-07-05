(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1548849036228858722097356803715229034423828125p875 {- 697539594241344 875 (-2.90928e+263)}
; Y = 1.373438785533903416791190466028638184070587158203125p333 {+ 1681818775376178 333 (2.40324e+100)}
; -1.1548849036228858722097356803715229034423828125p875 = 1.373438785533903416791190466028638184070587158203125p333 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101101010 #b0010011110100110100010010111101110110100010101000000)))
(assert (= y (fp #b0 #b10101001100 #b0101111110011001101011110010101011101101000100110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
