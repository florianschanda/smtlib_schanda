(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8896192084426939317154392483644187450408935546875p-78 {- 4006488735644152 -78 (-6.25223e-024)}
; Y = 1.680854774290992281748913228511810302734375p608 {+ 3066297307790336 608 (1.78553e+183)}
; -1.8896192084426939317154392483644187450408935546875p-78 < 1.680854774290992281748913228511810302734375p608 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110110001 #b1110001110111110000101011001111000100111100111111000)))
(assert (= y (fp #b0 #b11001011111 #b1010111001001100011111111001110011100111110000000000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
