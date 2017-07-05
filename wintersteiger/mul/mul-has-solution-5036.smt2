(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3926297439817842960252392003894783556461334228515625p-888 {+ 1768247168690937 -888 (6.74838e-268)}
; Y = -1.9021758014426077831870998124941252171993255615234375p-525 {- 4063038603199607 -525 (-1.73182e-158)}
; 1.3926297439817842960252392003894783556461334228515625p-888 * -1.9021758014426077831870998124941252171993255615234375p-525 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010000111 #b0110010010000011011000100000010111010110101011111001)))
(assert (= y (fp #b1 #b00111110010 #b1110011011110100111111100100101001110000010001110111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
