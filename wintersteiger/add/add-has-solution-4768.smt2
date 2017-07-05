(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7725918631145614057231796323321759700775146484375p2 {- 3479444426832216 2 (-7.09037)}
; Y = -1.228406181651284345690555710461921989917755126953125p439 {- 1028649994573842 439 (-1.74385e+132)}
; -1.7725918631145614057231796323321759700775146484375p2 + -1.228406181651284345690555710461921989917755126953125p439 == -1.228406181651284345690555710461921989917755126953125p439
; [HW: -1.228406181651284345690555710461921989917755126953125p439] 

; mpf : - 1028649994573842 439
; mpfd: - 1028649994573842 439 (-1.74385e+132) class: Neg. norm. non-zero
; hwf : - 1028649994573842 439 (-1.74385e+132) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000000001 #b1100010111001000100101001001000100111011100101011000)))
(assert (= y (fp #b1 #b10110110110 #b0011101001111000110100111101100001100101100000010010)))
(assert (= r (fp #b1 #b10110110110 #b0011101001111000110100111101100001100101100000010010)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
