(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7193330902588928044139038320281542837619781494140625p-1007 {+ 3239588237245217 -1007 (1.25359e-303)}
; Y = 1.2983550097351759244901359124924056231975555419921875p-551 {+ 1343671510667459 -551 (1.76143e-166)}
; 1.7193330902588928044139038320281542837619781494140625p-1007 % 1.2983550097351759244901359124924056231975555419921875p-551 == 1.7193330902588928044139038320281542837619781494140625p-1007
; [HW: 1.7193330902588928044139038320281542837619781494140625p-1007] 

; mpf : + 3239588237245217 -1007
; mpfd: + 3239588237245217 -1007 (1.25359e-303) class: Pos. norm. non-zero
; hwf : + 3239588237245217 -1007 (1.25359e-303) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010000 #b1011100000100110001101101010000110010111101100100001)))
(assert (= y (fp #b0 #b00111011000 #b0100110001100000111111100111000101101001000011000011)))
(assert (= r (fp #b0 #b00000010000 #xb82636a197b21)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
