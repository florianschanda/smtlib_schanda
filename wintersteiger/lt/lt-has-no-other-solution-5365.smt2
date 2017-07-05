(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8454007169596444715153893412207253277301788330078125p-288 {- 3807346353878205 -288 (-3.71067e-087)}
; Y = 1.551374538407333414369304591673426330089569091796875p572 {+ 2483170165712846 572 (2.39814e+172)}
; -1.8454007169596444715153893412207253277301788330078125p-288 < 1.551374538407333414369304591673426330089569091796875p572 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011011111 #b1101100001101100001011100110111101011011010010111101)))
(assert (= y (fp #b0 #b11000111011 #b1000110100100110111000011011101001001110011111001110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
