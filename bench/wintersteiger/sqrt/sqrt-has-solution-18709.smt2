(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.35593914535425685841119047836400568485260009765625p-639 {+ 1603007402384004 -639 (5.94392e-193)}
; 1.35593914535425685841119047836400568485260009765625p-639 S == 1.6467781546730917430210183738381601870059967041015625p-320
; [HW: 1.6467781546730917430210183738381601870059967041015625p-320] 

; mpf : + 2912829856377113 -320
; mpfd: + 2912829856377113 -320 (7.70968e-097) class: Pos. norm. non-zero
; hwf : + 2912829856377113 -320 (7.70968e-097) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110000000 #b0101101100011110110100111110110010101001101010000100)))
(assert (= r (fp #b0 #b01010111111 #b1010010110010011010000001100111000010110100100011001)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
