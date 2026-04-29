(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.8928997644856135895707893723738379776477813720703125p-75 {+ 4021263046616613 -75 (5.01046e-023)}
; +zero % 1.8928997644856135895707893723738379776477813720703125p-75 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01110110100 #b1110010010010101000101000011011100010010011000100101)))
(assert (= r (_ +zero 11 53)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
