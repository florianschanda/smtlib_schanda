(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.240437637564829831404722426668740808963775634765625p865 {- 1082834854942810 865 (-3.05155e+260)}
; Y = -1.1985301343653971262170898626209236681461334228515625p-368 {- 894100239149817 -368 (-1.99347e-111)}
; -1.240437637564829831404722426668740808963775634765625p865 > -1.1985301343653971262170898626209236681461334228515625p-368 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100000 #b0011110110001101010100100010111000010001100001011010)))
(assert (= y (fp #b1 #b01010001111 #b0011001011010010110111101111001001011110101011111001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
