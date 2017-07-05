(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4977561161652526156018438996397890150547027587890625p220 {+ 2241694259283217 220 (2.52371e+066)}
; Y = -1.42088691765734242977714529843069612979888916015625p541 {- 1895506165526724 541 (-1.02279e+163)}
; 1.4977561161652526156018438996397890150547027587890625p220 < -1.42088691765734242977714529843069612979888916015625p541 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011011011 #b0111111101101100111100011110000001010000010100010001)))
(assert (= y (fp #b1 #b11000011100 #b0110101110111111001111101011101010100111000011000100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
