(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8182137138346894378315710127935744822025299072265625p982 {+ 3684906976735337 982 (7.43191e+295)}
; Y = 1.4451504866552247197120095734135247766971588134765625p385 {+ 2004779565824265 385 (1.13884e+116)}
; 1.8182137138346894378315710127935744822025299072265625p982 M 1.4451504866552247197120095734135247766971588134765625p385 == 1.8182137138346894378315710127935744822025299072265625p982
; [HW: 1.8182137138346894378315710127935744822025299072265625p982] 

; mpf : + 3684906976735337 982
; mpfd: + 3684906976735337 982 (7.43191e+295) class: Pos. norm. non-zero
; hwf : + 3684906976735337 982 (7.43191e+295) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111010101 #b1101000101110110011101000011011000001111000001101001)))
(assert (= y (fp #b0 #b10110000000 #b0111000111110101011000011101110111111011100100001001)))
(assert (= r (fp #b0 #b11111010101 #b1101000101110110011101000011011000001111000001101001)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
