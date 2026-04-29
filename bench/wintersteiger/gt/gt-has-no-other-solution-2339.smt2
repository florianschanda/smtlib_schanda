(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2368476812833855138507033188943751156330108642578125p-168 {- 1066667129171421 -168 (-3.3058e-051)}
; Y = -1.2785171348763035847895253027672879397869110107421875p-344 {- 1254329664845219 -344 (-3.5677e-104)}
; -1.2368476812833855138507033188943751156330108642578125p-168 > -1.2785171348763035847895253027672879397869110107421875p-344 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101010111 #b0011110010100010000011001011010100111110110111011101)))
(assert (= y (fp #b1 #b01010100111 #b0100011101001100111001100010000110101011010110100011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
