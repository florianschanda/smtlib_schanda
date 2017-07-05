(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3890584439336992605973364334204234182834625244140625p-960 {+ 1752163463125153 -960 (1.42536e-289)}
; Y = 1.5099852105333890772698168802889995276927947998046875p267 {+ 2296769204122635 267 (3.58081e+080)}
; 1.3890584439336992605973364334204234182834625244140625p-960 < 1.5099852105333890772698168802889995276927947998046875p267 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000111111 #b0110001110011001010101011000110011101101100010100001)))
(assert (= y (fp #b0 #b10100001010 #b1000001010001110011001000000100010101111010000001011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
