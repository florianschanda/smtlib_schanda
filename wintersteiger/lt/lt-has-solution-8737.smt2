(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.290264212417159939150224090553820133209228515625p780 {+ 1307233798880912 780 (8.20494e+234)}
; Y = 1.1797996254938956095514868138707242906093597412109375p316 {+ 809745526375663 316 (1.57502e+095)}
; 1.290264212417159939150224090553820133209228515625p780 < 1.1797996254938956095514868138707242906093597412109375p316 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100001011 #b0100101001001110110000010110001110000111111010010000)))
(assert (= y (fp #b0 #b10100111011 #b0010111000000111010110010010011101010100010011101111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
