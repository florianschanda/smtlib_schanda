(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3366474555973366644678890224895440042018890380859375p-371 {- 1516125355583391 -371 (-2.779e-112)}
; Y = 1.9605055555284904844626225894899107515811920166015625p-645 {+ 4325732461965401 -645 (1.34283e-194)}
; -1.3366474555973366644678890224895440042018890380859375p-371 < 1.9605055555284904844626225894899107515811920166015625p-645 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001100 #b0101011000101110100001110001010000010010011110011111)))
(assert (= y (fp #b0 #b00101111010 #b1111010111100011101100010010110010011111000001011001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
