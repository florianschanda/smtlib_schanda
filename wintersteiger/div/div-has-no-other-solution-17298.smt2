(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7210507294796324462282655076705850660800933837890625p-923 {- 3247323796599697 -923 (-2.42721e-278)}
; Y = -1.5298765284722175561427093271049670875072479248046875p674 {- 2386351736179851 674 (-1.19915e+203)}
; -1.7210507294796324462282655076705850660800933837890625p-923 / -1.5298765284722175561427093271049670875072479248046875p674 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001100100 #b1011100010010110110001111101010111011111001110010001)))
(assert (= y (fp #b1 #b11010100001 #b1000011110100101111111001111100010110100110010001011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
