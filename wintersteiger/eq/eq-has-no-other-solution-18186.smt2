(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8124037734578448688438356839469633996486663818359375p329 {- 3658741331419135 329 (-1.98209e+099)}
; Y = -1.0923166079616384305239762397832237184047698974609375p987 {- 415757041216143 987 (-1.42874e+297)}
; -1.8124037734578448688438356839469633996486663818359375p329 = -1.0923166079616384305239762397832237184047698974609375p987 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101001000 #b1100111111111001101100011001011000100101111111111111)))
(assert (= y (fp #b1 #b11111011010 #b0001011110100010000011111010110000010010101010001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
