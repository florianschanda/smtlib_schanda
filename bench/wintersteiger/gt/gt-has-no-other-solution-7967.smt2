(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4045678566472601378478657352388836443424224853515625p399 {- 1822011648442681 399 (-1.81347e+120)}
; Y = -1.1696859834634449892831753459176979959011077880859375p-235 {- 764197731895967 -235 (-2.11846e-071)}
; -1.4045678566472601378478657352388836443424224853515625p399 > -1.1696859834634449892831753459176979959011077880859375p-235 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001110 #b0110011110010001110000100101000101010000000100111001)))
(assert (= y (fp #b1 #b01100010100 #b0010101101110000100010100110010110010000101010011111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
