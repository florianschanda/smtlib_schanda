(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.69297513159287138506670089554972946643829345703125p-745 {+ 3120882544418676 -745 (9.14753e-225)}
; 1.69297513159287138506670089554972946643829345703125p-745 S == 1.8400951777518852470194588022422976791858673095703125p-373
; [HW: 1.8400951777518852470194588022422976791858673095703125p-373] 

; mpf : + 3783452329479141 -373
; mpfd: + 3783452329479141 -373 (9.56427e-113) class: Pos. norm. non-zero
; hwf : + 3783452329479141 -373 (9.56427e-113) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100010110 #b1011000101100110110100010111011100100001111101110100)))
(assert (= r (fp #b0 #b01010001010 #b1101011100010000011110100100000111111000101111100101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
