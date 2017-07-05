(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.13433910552199535004547215066850185394287109375p-351 {+ 605009545570144 -351 (2.47294e-106)}
; 1.13433910552199535004547215066850185394287109375p-351 S == 1.5062132023866976471282441707444377243518829345703125p-176
; [HW: 1.5062132023866976471282441707444377243518829345703125p-176] 

; mpf : + 2279781589638757 -176
; mpfd: + 2279781589638757 -176 (1.57256e-053) class: Pos. norm. non-zero
; hwf : + 2279781589638757 -176 (1.57256e-053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010100000 #b0010001001100100000011000011000011001010011101100000)))
(assert (= r (fp #b0 #b01101001111 #b1000000110010111001100000011110100001101111001100101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
