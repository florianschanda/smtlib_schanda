(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1467394801230239576028679948649369180202484130859375p-677 {- 660855868002591 -677 (-1.82876e-204)}
; Y = -1.6483840613648876871621951067936606705188751220703125p-660 {- 2920062217155877 -660 (-3.44557e-199)}
; -1.1467394801230239576028679948649369180202484130859375p-677 * -1.6483840613648876871621951067936606705188751220703125p-660 == +zero
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
(assert (= x (fp #b1 #b00101011010 #b0010010110010000101101111111010000101001000100011111)))
(assert (= y (fp #b1 #b00101101011 #b1010010111111100011111110111001011001111010100100101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
