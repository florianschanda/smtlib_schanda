(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.12564659367528019373594361240975558757781982421875p81 {+ 565861952456364 81 (2.72165e+024)}
; Y = 1.211735510274952076770205167122185230255126953125p-246 {+ 953571965175376 -246 (1.07159e-074)}
; 1.12564659367528019373594361240975558757781982421875p81 > 1.211735510274952076770205167122185230255126953125p-246 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001010000 #b0010000000101010011000000000101010110000011010101100)))
(assert (= y (fp #b0 #b01100001001 #b0011011000110100010011000110010000001000011001010000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
