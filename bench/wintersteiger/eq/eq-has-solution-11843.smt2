(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.820206035008571365807483743992634117603302001953125p841 {+ 3693879593631634 841 (2.66899e+253)}
; Y = +zero {+ 0 -1023 (0)}
; 1.820206035008571365807483743992634117603302001953125p841 = +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101001000 #b1101000111111001000001011101000001010111111110010010)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
