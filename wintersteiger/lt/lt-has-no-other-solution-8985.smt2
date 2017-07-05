(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.11647303289600596798436527024023234844207763671875p400 {- 524547907549164 400 (-2.88301e+120)}
; Y = 0.777491054376889589860866180970333516597747802734375p-1022 {+ 3501508422775654 -1023 (1.72998e-308)}
; -1.11647303289600596798436527024023234844207763671875p400 < 0.777491054376889589860866180970333516597747802734375p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001111 #b0001110111010001001011010011101100100111011111101100)))
(assert (= y (fp #b0 #b00000000000 #b1100011100001001101001110101101101111011001101100110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
