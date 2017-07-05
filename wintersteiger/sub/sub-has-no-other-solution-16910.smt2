(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9212802108570545822630037946510128676891326904296875p38 {+ 4149077214319643 38 (5.28117e+011)}
; Y = 1.0826992561024486594334348410484381020069122314453125p-945 {+ 372444338966805 -945 (3.64051e-285)}
; 1.9212802108570545822630037946510128676891326904296875p38 - 1.0826992561024486594334348410484381020069122314453125p-945 == 1.921280210857054360218398869619704782962799072265625p38
; [HW: 1.921280210857054360218398869619704782962799072265625p38] 

; mpf : + 4149077214319642 38
; mpfd: + 4149077214319642 38 (5.28117e+011) class: Pos. norm. non-zero
; hwf : + 4149077214319642 38 (5.28117e+011) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100101 #b1110101111011001000001010001100000010101010000011011)))
(assert (= y (fp #b0 #b00001001110 #b0001010100101011110001110100100001011101000100010101)))
(assert (= r (fp #b0 #b10000100101 #b1110101111011001000001010001100000010101010000011010)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
