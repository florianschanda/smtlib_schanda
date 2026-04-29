(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2608419146733849114383474443457089364528656005859375p-231 {+ 1174727549725663 -231 (3.65369e-070)}
; Y = -1.8236136696863083361819235506118275225162506103515625p-485 {- 3709226215896505 -485 (-1.82551e-146)}
; 1.2608419146733849114383474443457089364528656005859375p-231 < -1.8236136696863083361819235506118275225162506103515625p-485 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011000 #b0100001011000110100010010010010011110010101111011111)))
(assert (= y (fp #b1 #b01000011010 #b1101001011011000010110000110111111010111010110111001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
