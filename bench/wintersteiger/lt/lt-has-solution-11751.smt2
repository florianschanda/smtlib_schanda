(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.20415829400915530555948862456716597080230712890625p-228 {+ 919447216824228 -228 (2.79154e-069)}
; Y = -1.6386208279937373166745828712009824812412261962890625p-576 {- 2876092522983633 -576 (-6.62523e-174)}
; 1.20415829400915530555948862456716597080230712890625p-228 < -1.6386208279937373166745828712009824812412261962890625p-576 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011011 #b0011010001000011101101111100101111111001111110100100)))
(assert (= y (fp #b1 #b00110111111 #b1010001101111100101001111001001011000111000011010001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
