(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6709157278741051388948335443274118006229400634765625p243 {+ 3021535822050825 243 (2.3618e+073)}
; Y = -1.1824581241779508200551163099589757621288299560546875p864 {- 821718340058539 864 (-1.45446e+260)}
; 1.6709157278741051388948335443274118006229400634765625p243 = -1.1824581241779508200551163099589757621288299560546875p864 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011110010 #b1010101111000001001000100001010110010111011000001001)))
(assert (= y (fp #b1 #b11101011111 #b0010111010110101100100110101110000111011110110101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
