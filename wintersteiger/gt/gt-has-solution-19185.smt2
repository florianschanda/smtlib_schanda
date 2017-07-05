(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.353483225629311004212240732158534228801727294921875p519 {+ 1591946923225886 519 (2.32285e+156)}
; Y = 1.4108130292836829067226744882646016776561737060546875p775 {+ 1850137405600939 775 (2.8036e+233)}
; 1.353483225629311004212240732158534228801727294921875p519 > 1.4108130292836829067226744882646016776561737060546875p775 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000000110 #b0101101001111101111000000110110111000011001100011110)))
(assert (= y (fp #b0 #b11100000110 #b0110100100101011000010101110110110001011010010101011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
