(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3424167172466467956581936959992162883281707763671875p-116 {+ 1542107800197427 -116 (1.61588e-035)}
; Y = -1.733178511349286576859185515786521136760711669921875p-931 {- 3301942470508702 -931 (-9.54811e-281)}
; 1.3424167172466467956581936959992162883281707763671875p-116 > -1.733178511349286576859185515786521136760711669921875p-931 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110001011 #b0101011110101000100111110011101000101101100100110011)))
(assert (= y (fp #b1 #b00001011100 #b1011101110110001100101100100000001100000000010011110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
