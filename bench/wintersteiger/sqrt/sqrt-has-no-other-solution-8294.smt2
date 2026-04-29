(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.826940752422725910975032093119807541370391845703125p-713 {+ 3724210064468466 -713 (4.23972e-215)}
; 1.826940752422725910975032093119807541370391845703125p-713 S == 1.911512883776997018259180549648590385913848876953125p-357
; [HW: 1.911512883776997018259180549648590385913848876953125p-357] 

; mpf : + 4105089083721490 -357
; mpfd: + 4105089083721490 -357 (6.51132e-108) class: Pos. norm. non-zero
; hwf : + 4105089083721490 -357 (6.51132e-108) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100110110 #b1101001110110010011000111001111101100010100111110010)))
(assert (= r (fp #b0 #b01010011010 #b1110100101011000111010001000100110110100011100010010)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
