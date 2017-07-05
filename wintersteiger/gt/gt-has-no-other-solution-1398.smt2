(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6975707548035197103075688573881052434444427490234375p901 {+ 3141579391397687 901 (2.86982e+271)}
; Y = -1.867311161743166803006488407845608890056610107421875p-618 {- 3906022224840798 -618 (-1.71664e-186)}
; 1.6975707548035197103075688573881052434444427490234375p901 > -1.867311161743166803006488407845608890056610107421875p-618 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110000100 #b1011001010010011111111110011101010000110111100110111)))
(assert (= y (fp #b1 #b00110010101 #b1101111000001000000110101011001100100100100001011110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
