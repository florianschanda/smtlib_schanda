(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8347727640572977225730255668167956173419952392578125p-746 {- 3759482309147485 -746 (-4.95685e-225)}
; Y = -1.48259739237583776372275679023005068302154541015625p-900 {- 2173425436473796 -900 (-1.75399e-271)}
; -1.8347727640572977225730255668167956173419952392578125p-746 = -1.48259739237583776372275679023005068302154541015625p-900 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100010101 #b1101010110110011101010101111100100110111101101011101)))
(assert (= y (fp #b1 #b00001111011 #b0111101110001011100000001011000101100011100111000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
