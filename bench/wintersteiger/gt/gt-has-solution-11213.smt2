(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5983999815488638684968236702843569219112396240234375p-393 {- 2694953933921975 -393 (-7.92314e-119)}
; Y = 1.1826834258600411597939228158793412148952484130859375p1002 {+ 822733008630047 1002 (5.06902e+301)}
; -1.5983999815488638684968236702843569219112396240234375p-393 > 1.1826834258600411597939228158793412148952484130859375p1002 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001110110 #b1001100100110000101111011011111010101101111010110111)))
(assert (= y (fp #b0 #b11111101001 #b0010111011000100010101110100101110010111000100011111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
