(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1230613058390159775257188812247477471828460693359375p552 {- 554218851120319 552 (-1.65562e+166)}
; Y = -1.095863832386818170760989232803694903850555419921875p-372 {- 431732319815582 -372 (-1.1392e-112)}
; -1.1230613058390159775257188812247477471828460693359375p552 < -1.095863832386818170760989232803694903850555419921875p-372 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000100111 #b0001111110000000111100100001101111111011010010111111)))
(assert (= y (fp #b1 #b01010001011 #b0001100010001010100010000011100011111000011110011110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
