(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.68434669556494842623806107440032064914703369140625p437 {- 3082023523138532 437 (-5.97778e+131)}
; Y = -1.7595141521569532816471337355324067175388336181640625p1002 {- 3420547652636673 1002 (-7.54134e+301)}
; -1.68434669556494842623806107440032064914703369140625p437 > -1.7595141521569532816471337355324067175388336181640625p1002 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110110100 #b1010111100110001010110000101010010010011101111100100)))
(assert (= y (fp #b1 #b11111101001 #b1100001001101111100001001111110001011101000000000001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
