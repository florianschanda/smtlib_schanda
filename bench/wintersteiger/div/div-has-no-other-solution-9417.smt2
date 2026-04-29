(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.439706536469953501722329747281037271022796630859375p-152 {- 1980262193798454 -152 (-2.52182e-046)}
; Y = -1.6011858962047680332574373096576891839504241943359375p924 {- 2707500578128191 924 (-2.27069e+278)}
; -1.439706536469953501722329747281037271022796630859375p-152 / -1.6011858962047680332574373096576891839504241943359375p924 == +zero
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
(assert (= x (fp #b1 #b01101100111 #b0111000010010000100110111000100111111001110100110110)))
(assert (= y (fp #b1 #b11110011011 #b1001100111100111010100011010001100000100000100111111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
