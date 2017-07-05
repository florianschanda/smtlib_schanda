(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.048631119066169237186159080010838806629180908203125p201 {- 219015089705010 201 (-3.37017e+060)}
; Y = -1.0516589358948735810628249964793212711811065673828125p471 {- 232651164446509 471 (-6.41214e+141)}
; -1.048631119066169237186159080010838806629180908203125p201 > -1.0516589358948735810628249964793212711811065673828125p471 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011001000 #b0000110001110011000101101100100111110101000000110010)))
(assert (= y (fp #b1 #b10111010110 #b0000110100111001100001010010000000110110111100101101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
