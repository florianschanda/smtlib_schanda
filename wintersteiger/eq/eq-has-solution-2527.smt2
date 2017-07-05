(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.602230059275821627551295023295097053050994873046875p-645 {- 2712203070545902 -645 (-1.09743e-194)}
; Y = 1.8051126396665739815006190838175825774669647216796875p-248 {+ 3625904983993659 -248 (3.99085e-075)}
; -1.602230059275821627551295023295097053050994873046875p-645 = 1.8051126396665739815006190838175825774669647216796875p-248 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101111010 #b1001101000101011101111111100100101000001111111101110)))
(assert (= y (fp #b0 #b01100000111 #b1100111000011011110111001010100011110110110100111011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
