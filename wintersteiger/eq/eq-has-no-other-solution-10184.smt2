(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.821263693971380437375273686484433710575103759765625p-471 {- 3698642866142426 -471 (-2.98707e-142)}
; Y = -1.2000403973761759601757148629985749721527099609375p653 {- 900901859082392 653 (-4.48521e+196)}
; -1.821263693971380437375273686484433710575103759765625p-471 = -1.2000403973761759601757148629985749721527099609375p653 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101000 #b1101001000111110010101100110001011111111110011011010)))
(assert (= y (fp #b1 #b11010001100 #b0011001100110101110110001111010010011100000010011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
