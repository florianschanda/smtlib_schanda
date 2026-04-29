(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.59955301466421051514998907805420458316802978515625p-362 {- 2700146733430596 -362 (-1.70271e-109)}
; Y = 1.0738746135784131841006683316663838922977447509765625p40 {+ 332701682183881 40 (1.18074e+012)}
; -1.59955301466421051514998907805420458316802978515625p-362 > 1.0738746135784131841006683316663838922977447509765625p40 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010010101 #b1001100101111100010011100110111000110011011101000100)))
(assert (= y (fp #b0 #b10000100111 #b0001001011101001011100100101100101010010111011001001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
