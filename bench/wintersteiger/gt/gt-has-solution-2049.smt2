(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4373921048069588923823403092683292925357818603515625p-400 {+ 1969838920223417 -400 (5.56643e-121)}
; Y = -1.251323604641076503440899614361114799976348876953125p-7 {- 1131860892210962 -7 (-0.00977597)}
; 1.4373921048069588923823403092683292925357818603515625p-400 > -1.251323604641076503440899614361114799976348876953125p-7 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001101111 #b0110111111111000111011011101000110101100101010111001)))
(assert (= y (fp #b1 #b01111111000 #b0100000001010110101111100110011010100101011100010010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
