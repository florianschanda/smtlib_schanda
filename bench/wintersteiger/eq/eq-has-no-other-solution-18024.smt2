(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.139968781821707022317013979773037135601043701171875p-426 {- 630363353655742 -426 (-6.57832e-129)}
; +zero = -1.139968781821707022317013979773037135601043701171875p-426 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01001010101 #b0010001111010100111111100111110001100010100110111110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
