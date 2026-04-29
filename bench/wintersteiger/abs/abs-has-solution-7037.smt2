(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.177092600381411724441704791388474404811859130859375p-803 {- 797554169087798 -803 (-2.2066e-242)}
; -1.177092600381411724441704791388474404811859130859375p-803 | == 1.177092600381411724441704791388474404811859130859375p-803
; [HW: 1.177092600381411724441704791388474404811859130859375p-803] 

; mpf : + 797554169087798 -803
; mpfd: + 797554169087798 -803 (2.2066e-242) class: Pos. norm. non-zero
; hwf : + 797554169087798 -803 (2.2066e-242) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011011100 #b0010110101010101111100001100111100000000011100110110)))
(assert (= r (fp #b0 #b00011011100 #b0010110101010101111100001100111100000000011100110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
