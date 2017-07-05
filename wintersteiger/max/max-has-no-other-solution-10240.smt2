(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3631018254057647443033829404157586395740509033203125p530 {+ 1635265245594949 530 (4.791e+159)}
; Y = 1.6790786489551177140810978016816079616546630859375p-463 {+ 3058298350389528 -463 (7.0499e-140)}
; 1.3631018254057647443033829404157586395740509033203125p530 M 1.6790786489551177140810978016816079616546630859375p-463 == 1.3631018254057647443033829404157586395740509033203125p530
; [HW: 1.3631018254057647443033829404157586395740509033203125p530] 

; mpf : + 1635265245594949 530
; mpfd: + 1635265245594949 530 (4.791e+159) class: Pos. norm. non-zero
; hwf : + 1635265245594949 530 (4.791e+159) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010001 #b0101110011110100001111011100000100111100010101000101)))
(assert (= y (fp #b0 #b01000110000 #b1010110111011000000110010010110010101100100100011000)))
(assert (= r (fp #b0 #b11000010001 #b0101110011110100001111011100000100111100010101000101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
