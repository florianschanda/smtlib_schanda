(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8037664291398758376061550734448246657848358154296875p554 {+ 3619842190767259 554 (1.06365e+167)}
; Y = 1.43747760748770136984830969595350325107574462890625p-952 {+ 1970223990064548 -952 (3.77612e-287)}
; 1.8037664291398758376061550734448246657848358154296875p554 = 1.43747760748770136984830969595350325107574462890625p-952 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101001 #b1100110111000011101000101111111011000111010010011011)))
(assert (= y (fp #b0 #b00001000111 #b0110111111111110100010000101000011100100010110100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
