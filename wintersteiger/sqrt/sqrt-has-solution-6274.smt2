(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6305852086027374792109867485123686492443084716796875p108 {+ 2839903310488635 108 (5.29155e+032)}
; 1.6305852086027374792109867485123686492443084716796875p108 S == 1.276943698290076145696048115496523678302764892578125p54
; [HW: 1.276943698290076145696048115496523678302764892578125p54] 

; mpf : + 1247243536421794 54
; mpfd: + 1247243536421794 54 (2.30034e+016) class: Pos. norm. non-zero
; hwf : + 1247243536421794 54 (2.30034e+016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001101011 #b1010000101101110000010000100000001001010010000111011)))
(assert (= r (fp #b0 #b10000110101 #b0100011011100101110010000011111011111101001110100010)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
