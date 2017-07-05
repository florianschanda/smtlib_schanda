(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.98662466144970295545135741122066974639892578125p248 {- 4443362457659424 248 (-8.98576e+074)}
; Y = 1.77340684376454138515555314370431005954742431640625p448 {+ 3483114773383780 448 (1.28898e+135)}
; -1.98662466144970295545135741122066974639892578125p248 > 1.77340684376454138515555314370431005954742431640625p448 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011110111 #b1111110010010011011011110000111001011010100000100000)))
(assert (= y (fp #b0 #b10110111111 #b1100010111111101111111011010110001111000101001100100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
