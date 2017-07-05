(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5885708463830539027838995025376789271831512451171875p-262 {- 2650687444451859 -262 (-2.14362e-079)}
; Y = -1.231402748597928198392992271692492067813873291015625p-995 {- 1042145332358138 -995 (-3.67751e-300)}
; -1.5885708463830539027838995025376789271831512451171875p-262 = -1.231402748597928198392992271692492067813873291015625p-995 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011111001 #b1001011010101100100101000011100010011000001000010011)))
(assert (= y (fp #b1 #b00000011100 #b0011101100111101001101011110010101101110101111111010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
