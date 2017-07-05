(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.28315756231395194930655634379945695400238037109375p820 {- 1275228292124252 820 (-8.97173e+246)}
; Y = 1.706710714303786513568184091127477586269378662109375p-413 {+ 3182742109597270 -413 (8.06811e-125)}
; Z = -1.9264137011587048053939952296786941587924957275390625p15 {- 4172196399329265 15 (-63124.7)}
; -1.28315756231395194930655634379945695400238037109375p820 x 1.706710714303786513568184091127477586269378662109375p-413 -1.9264137011587048053939952296786941587924957275390625p15 == -1.09498937987057498588683301932178437709808349609375p408
; [HW: -1.09498937987057498588683301932178437709808349609375p408] 

; mpf : - 427794135789276 408
; mpfd: - 427794135789276 408 (-7.23849e+122) class: Neg. norm. non-zero
; hwf : - 427794135789276 408 (-7.23849e+122) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100110011 #b0100100001111101000000111001010111000000111001011100)))
(assert (= y (fp #b0 #b01001100010 #b1011010011101010111111100100110110101010111001010110)))
(assert (= z (fp #b1 #b10000001110 #b1110110100101001011100101100010100001010111111110001)))
(assert (= r (fp #b1 #b10110010111 #b0001100001010001001110010101100000000010111011011100)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
