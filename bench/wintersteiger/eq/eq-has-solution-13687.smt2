(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.69010081525347910513801252818666398525238037109375p-729 {+ 3107937774423644 -729 (5.98475e-220)}
; Y = 1.218905015123266100118826216203160583972930908203125p-617 {+ 985860544538674 -617 (2.24111e-186)}
; 1.69010081525347910513801252818666398525238037109375p-729 = 1.218905015123266100118826216203160583972930908203125p-617 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100100110 #b1011000010101010011100100111000001110100111001011100)))
(assert (= y (fp #b0 #b00110010110 #b0011100000001010001010001011100011100010100000110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
