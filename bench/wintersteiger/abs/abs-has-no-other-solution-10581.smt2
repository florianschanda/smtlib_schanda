(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8201503795393743079245041371905244886875152587890625p-273 {- 3693628943681297 -273 (-1.19927e-082)}
; -1.8201503795393743079245041371905244886875152587890625p-273 | == 1.8201503795393743079245041371905244886875152587890625p-273
; [HW: 1.8201503795393743079245041371905244886875152587890625p-273] 

; mpf : + 3693628943681297 -273
; mpfd: + 3693628943681297 -273 (1.19927e-082) class: Pos. norm. non-zero
; hwf : + 3693628943681297 -273 (1.19927e-082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011101110 #b1101000111110101011000000001000111101100011100010001)))
(assert (= r (fp #b0 #b01011101110 #b1101000111110101011000000001000111101100011100010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
