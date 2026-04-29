(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6202173421634757932707771033165045082569122314453125p389 {+ 2793210591056149 389 (2.04287e+117)}
; 1.6202173421634757932707771033165045082569122314453125p389 S == 1.8001207415967830360870038930443115532398223876953125p194
; [HW: 1.8001207415967830360870038930443115532398223876953125p194] 

; mpf : + 3603423473706677 194
; mpfd: + 3603423473706677 194 (4.51982e+058) class: Pos. norm. non-zero
; hwf : + 3603423473706677 194 (4.51982e+058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000100 #b1001111011000110100100000101000100000001000100010101)))
(assert (= r (fp #b0 #b10011000001 #b1100110011010100101101101000001000000010011010110101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
