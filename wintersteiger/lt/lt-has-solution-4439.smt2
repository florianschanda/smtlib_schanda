(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7014755480867094217245494292001239955425262451171875p74 {+ 3159165016972819 74 (3.214e+022)}
; Y = -1.7884031735007506203061211635940708220005035400390625p959 {- 3550652238395697 959 (-8.71428e+288)}
; 1.7014755480867094217245494292001239955425262451171875p74 < -1.7884031735007506203061211635940708220005035400390625p959 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001001001 #b1011001110010011111001101100100111111001111000010011)))
(assert (= y (fp #b1 #b11110111110 #b1100100111010100110010100101011000111111100100110001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
