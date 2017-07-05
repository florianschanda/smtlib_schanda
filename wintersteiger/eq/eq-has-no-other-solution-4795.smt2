(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.219747986303442832678456397843547165393829345703125p272 {+ 989656949231602 272 (9.25612e+081)}
; Y = 1.0789508490576598109811357062426395714282989501953125p620 {+ 355563014396661 620 (4.6946e+186)}
; 1.219747986303442832678456397843547165393829345703125p272 = 1.0789508490576598109811357062426395714282989501953125p620 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100001111 #b0011100001000001011001110110111010001000111111110010)))
(assert (= y (fp #b0 #b11001101011 #b0001010000110110000111110111001010110001101011110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
