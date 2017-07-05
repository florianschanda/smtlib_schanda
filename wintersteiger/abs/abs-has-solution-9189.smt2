(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.41269687812610111876665541785769164562225341796875p-596 {+ 1858621506545676 -596 (5.44718e-180)}
; 1.41269687812610111876665541785769164562225341796875p-596 | == 1.41269687812610111876665541785769164562225341796875p-596
; [HW: 1.41269687812610111876665541785769164562225341796875p-596] 

; mpf : + 1858621506545676 -596
; mpfd: + 1858621506545676 -596 (5.44718e-180) class: Pos. norm. non-zero
; hwf : + 1858621506545676 -596 (5.44718e-180) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110101011 #b0110100110100110100000001010101010110110100000001100)))
(assert (= r (fp #b0 #b00110101011 #b0110100110100110100000001010101010110110100000001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
