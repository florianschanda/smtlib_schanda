(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.949556487704269702732062796712853014469146728515625p-204 {+ 4276422244192186 -204 (7.58257e-062)}
; Y = -1.0240341210983194830674847253249026834964752197265625p-882 {- 108240058822569 -882 (-3.17584e-266)}
; 1.949556487704269702732062796712853014469146728515625p-204 * -1.0240341210983194830674847253249026834964752197265625p-882 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100110011 #b1111001100010110001000100100110001100100111110111010)))
(assert (= y (fp #b1 #b00010001101 #b0000011000100111000110011010010000011010111110101001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
