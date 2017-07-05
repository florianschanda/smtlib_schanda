(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2591495618985286686353219920420087873935699462890625p-901 {+ 1167105870399441 -901 (7.4482e-272)}
; Y = -1.9647451328212881538348710819263942539691925048828125p999 {- 4344825820681453 999 (-1.05262e+301)}
; 1.2591495618985286686353219920420087873935699462890625p-901 < -1.9647451328212881538348710819263942539691925048828125p999 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001111010 #b0100001001010111101000000010110100100000011111010001)))
(assert (= y (fp #b1 #b11111100110 #b1111011011111001100010010111101001110001010011101101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
