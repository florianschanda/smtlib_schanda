(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.207277977777879041099140522419475018978118896484375p871 {- 933497023482566 871 (-1.90079e+262)}
; Y = 1.631707027363917372753121526329778134822845458984375p-1012 {+ 2844955533043462 -1012 (3.7178e-305)}
; -1.207277977777879041099140522419475018978118896484375p871 = 1.631707027363917372753121526329778134822845458984375p-1012 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100110 #b0011010100010000001010110110011110111100101011000110)))
(assert (= y (fp #b0 #b00000001011 #b1010000110110111100011010011111100101110011100000110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
