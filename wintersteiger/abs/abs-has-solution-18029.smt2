(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2092570444430472687002975362702272832393646240234375p-69 {- 942409947378359 -69 (-2.04856e-021)}
; -1.2092570444430472687002975362702272832393646240234375p-69 | == 1.2092570444430472687002975362702272832393646240234375p-69
; [HW: 1.2092570444430472687002975362702272832393646240234375p-69] 

; mpf : + 942409947378359 -69
; mpfd: + 942409947378359 -69 (2.04856e-021) class: Pos. norm. non-zero
; hwf : + 942409947378359 -69 (2.04856e-021) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110111010 #b0011010110010001110111101010001001010111001010110111)))
(assert (= r (fp #b0 #b01110111010 #b0011010110010001110111101010001001010111001010110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
