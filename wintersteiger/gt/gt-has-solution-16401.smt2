(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9877606684972890516149846007465384900569915771484375p279 {- 4448478578575623 279 (-1.93078e+084)}
; Y = -1.1532844442447454103017889792681671679019927978515625p-98 {- 690331765982329 -98 (-3.63912e-030)}
; -1.9877606684972890516149846007465384900569915771484375p279 > -1.1532844442447454103017889792681671679019927978515625p-98 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100010110 #b1111110011011101111000100001011101111000100100000111)))
(assert (= y (fp #b1 #b01110011101 #b0010011100111101101001100011101100000100010001111001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
