(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2583822264918083089213496350566856563091278076171875p-834 {- 1163650098947667 -834 (-1.09849e-251)}
; Y = 1.0789654817412974718848772681667469441890716552734375p-352 {+ 355628914145239 -352 (1.17611e-106)}
; -1.2583822264918083089213496350566856563091278076171875p-834 < 1.0789654817412974718848772681667469441890716552734375p-352 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010111101 #b0100001000100101010101100110110010100110011001010011)))
(assert (= y (fp #b0 #b01010011111 #b0001010000110111000101001111000110010111011111010111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
