(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0569565956988185018161630068789236247539520263671875p-445 {+ 256509703165491 -445 (1.16335e-134)}
; Y = 1.5063824204557649810709563098498620092868804931640625p30 {+ 2280543680071553 30 (1.61747e+009)}
; 1.0569565956988185018161630068789236247539520263671875p-445 < 1.5063824204557649810709563098498620092868804931640625p30 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001000010 #b0000111010010100101101010001101111010001011000110011)))
(assert (= y (fp #b0 #b10000011101 #b1000000110100010010001110011111100100000011110000001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
