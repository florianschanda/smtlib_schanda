(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6488273690187995601519332922180183231830596923828125p-198 {+ 2922058697340845 -198 (4.10427e-060)}
; Y = 1.429783950039105189233623605105094611644744873046875p1019 {+ 1935574837245934 1019 (8.03223e+306)}
; 1.6488273690187995601519332922180183231830596923828125p-198 < 1.429783950039105189233623605105094611644744873046875p1019 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100111001 #b1010011000011001100011001110101010101111011110101101)))
(assert (= y (fp #b0 #b11111111010 #b0110111000000110010100100010100111000011011111101110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
