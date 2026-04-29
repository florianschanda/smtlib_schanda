(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9594082628478786123338295510620810091495513916015625p367 {- 4320790695057881 367 (-5.89024e+110)}
; Y = 1.2469021806903786142584067420102655887603759765625p-405 {+ 1111948568954152 -405 (1.50898e-122)}
; -1.9594082628478786123338295510620810091495513916015625p367 = 1.2469021806903786142584067420102655887603759765625p-405 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101101110 #b1111010110011011110001111010100001110001100111011001)))
(assert (= y (fp #b0 #b01001101010 #b0011111100110100111110110011011101100000010100101000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
