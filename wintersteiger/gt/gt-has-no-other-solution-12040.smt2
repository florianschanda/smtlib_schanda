(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1809508542229967265058121483889408409595489501953125p-832 {- 814930199651061 -832 (-4.12359e-251)}
; Y = 1.9619715801896138174242878449149429798126220703125p809 {+ 4332334850082952 809 (6.69822e+243)}
; -1.1809508542229967265058121483889408409595489501953125p-832 > 1.9619715801896138174242878449149429798126220703125p809 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010111111 #b0010111001010010110010111001000100010010001011110101)))
(assert (= y (fp #b0 #b11100101000 #b1111011001000011110001001111110010011000100010001000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
