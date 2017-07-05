(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3129036583339270816139787712018005549907684326171875p688 {- 1409192799075539 688 (-1.68605e+207)}
; Y = -1.821461909896611164327850929112173616886138916015625p-290 {- 3699535551309434 -290 (-9.15633e-088)}
; -1.3129036583339270816139787712018005549907684326171875p688 > -1.821461909896611164327850929112173616886138916015625p-290 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010101111 #b0101000000011010011101000100001101010111110011010011)))
(assert (= y (fp #b1 #b01011011101 #b1101001001001011010100111110010111101010011001111010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
