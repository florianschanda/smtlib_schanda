(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8215118465319208862496225265203975141048431396484375p-36 {- 3699760445921607 -36 (-2.65065e-011)}
; Y = 1.0422244798312620961411312237032689154148101806640625p158 {+ 190162151633985 158 (3.80803e+047)}
; -1.8215118465319208862496225265203975141048431396484375p-36 < 1.0422244798312620961411312237032689154148101806640625p158 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111011011 #b1101001001001110100110011011001000100001100101000111)))
(assert (= y (fp #b0 #b10010011101 #b0000101011001111001110010011011111110111010001000001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
