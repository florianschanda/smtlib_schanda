(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6420788794716363323544783270335756242275238037109375p983 {+ 2891666202330927 983 (1.34239e+296)}
; Y = 1.0645595115608494918291171416058205068111419677734375p907 {+ 290750192208663 907 (1.1518e+273)}
; 1.6420788794716363323544783270335756242275238037109375p983 > 1.0645595115608494918291171416058205068111419677734375p907 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111010110 #b1010010001011111010010000000110011001000011100101111)))
(assert (= y (fp #b0 #b11110001010 #b0001000010000110111110001101111011001100101100010111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
