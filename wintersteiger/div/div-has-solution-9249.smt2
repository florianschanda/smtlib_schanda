(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0861013168086290914260416684555821120738983154296875p-167 {+ 387765858295451 -167 (5.80579e-051)}
; Y = -1.7785594694278177296808962637442164123058319091796875p818 {- 3506320136400891 818 (-3.10889e+246)}
; 1.0861013168086290914260416684555821120738983154296875p-167 / -1.7785594694278177296808962637442164123058319091796875p818 == -1.221326962047594388849347524228505790233612060546875p-986
; [HW: -1.221326962047594388849347524228505790233612060546875p-986] 

; mpf : - 996768023804590 -986
; mpfd: - 996768023804590 -986 (-1.86748e-297) class: Neg. norm. non-zero
; hwf : - 996768023804590 -986 (-1.86748e-297) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101011000 #b0001011000001010101111000110001111010101111010011011)))
(assert (= y (fp #b1 #b11100110001 #b1100011101001111101011000110001100101110111111111011)))
(assert (= r (fp #b1 #b00000100101 #b0011100010101000111000100011111110110111101010101110)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
