(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3915960427914109143188170492067001760005950927734375p368 {+ 1763591792395159 368 (8.36665e+110)}
; Y = -1.8578485554446315664023359204293228685855865478515625p-8 {- 3863406434640761 -8 (-0.00725722)}
; 1.3915960427914109143188170492067001760005950927734375p368 = -1.8578485554446315664023359204293228685855865478515625p-8 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101111 #b0110010000111111101000110110010100001000001110010111)))
(assert (= y (fp #b1 #b01111110111 #b1101101110011011111101101000001010001110001101111001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
