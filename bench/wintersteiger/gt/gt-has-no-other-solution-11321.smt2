(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4755176125686213506327248978777788579463958740234375p733 {+ 2141540942772151 733 (6.66701e+220)}
; Y = 1.5866587911623477591405162456794641911983489990234375p-464 {+ 2642076313272375 -464 (3.33093e-140)}
; 1.4755176125686213506327248978777788579463958740234375p733 > 1.5866587911623477591405162456794641911983489990234375p-464 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011011100 #b0111100110111011100001011011001010100111011110110111)))
(assert (= y (fp #b0 #b01000101111 #b1001011000101111010001010100000111110100000000110111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
