(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2079186236049543889947699426556937396526336669921875p998 {+ 936382235790659 998 (3.23574e+300)}
; Y = -1.4651116687779601743812918357434682548046112060546875p747 {- 2094676738194091 747 (-1.08462e+225)}
; 1.2079186236049543889947699426556937396526336669921875p998 > -1.4651116687779601743812918357434682548046112060546875p747 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111100101 #b0011010100111010001001111010100010011100110101000011)))
(assert (= y (fp #b1 #b11011101010 #b0111011100010001100011101110111001100011101010101011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
