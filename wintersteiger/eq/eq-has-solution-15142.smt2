(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3730106328305551333102130229235626757144927978515625p-989 {- 1679890547020921 -989 (-2.62427e-298)}
; Y = -1.2053496466181747859280903867329470813274383544921875p-318 {- 924812591990275 -318 (-2.25722e-096)}
; -1.3730106328305551333102130229235626757144927978515625p-989 = -1.2053496466181747859280903867329470813274383544921875p-318 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000100010 #b0101111101111101100111111111010100010001010001111001)))
(assert (= y (fp #b1 #b01011000001 #b0011010010010001110010110110000001111000011000000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
