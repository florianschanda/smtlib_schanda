(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7119866357020983027581451096921227872371673583984375p580 {+ 3206502747240743 580 (6.77482e+174)}
; Y = 1.2412714440616936517614021795452572405338287353515625p-861 {+ 1086589985571385 -861 (8.0731e-260)}
; 1.7119866357020983027581451096921227872371673583984375p580 < 1.2412714440616936517614021795452572405338287353515625p-861 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001000011 #b1011011001000100110000011001001110000111100100100111)))
(assert (= y (fp #b0 #b00010100010 #b0011110111000011111101110010000110110100001000111001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
