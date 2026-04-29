(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.51589464227198167378674042993225157260894775390625p-511 {+ 2323382918698532 -511 (2.26121e-154)}
; Y = 1.7329074375458748402678565980750136077404022216796875p-111 {+ 3300721662628667 -111 (6.67492e-034)}
; 1.51589464227198167378674042993225157260894775390625p-511 < 1.7329074375458748402678565980750136077404022216796875p-111 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000000000 #b1000010000010001101010111101100010111101011000100100)))
(assert (= y (fp #b0 #b01110010000 #b1011101110011111110100100110001101000001001100111011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
