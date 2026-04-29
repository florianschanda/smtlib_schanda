(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2744678194192584630428655145806260406970977783203125p-626 {+ 1236093169261765 -626 (4.57669e-189)}
; Y = 1.255645276382485686639256527996622025966644287109375p-579 {+ 1151323971455190 -579 (6.34599e-175)}
; 1.2744678194192584630428655145806260406970977783203125p-626 > 1.255645276382485686639256527996622025966644287109375p-579 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110001101 #b0100011001000011100001011110010000110101110011000101)))
(assert (= y (fp #b0 #b00110111100 #b0100000101110001111110000000010101110000100011010110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
