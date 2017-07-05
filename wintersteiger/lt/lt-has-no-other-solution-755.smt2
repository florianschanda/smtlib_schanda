(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.823137517276240071595339031773619353771209716796875p702 {- 3707081816079950 702 (-3.83598e+211)}
; Y = 1.9595370438741401830640143089112825691699981689453125p-1012 {+ 4321370673239765 -1012 (4.46476e-305)}
; -1.823137517276240071595339031773619353771209716796875p702 < 1.9595370438741401830640143089112825691699981689453125p-1012 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010111101 #b1101001010111001001000111110110011001111111001001110)))
(assert (= y (fp #b0 #b00000001011 #b1111010110100100001110000011111010111101011011010101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
