(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9650328289100464917993349445168860256671905517578125p731 {- 4346121488679581 731 (-2.21971e+220)}
; -1.9650328289100464917993349445168860256671905517578125p731 | == 1.9650328289100464917993349445168860256671905517578125p731
; [HW: 1.9650328289100464917993349445168860256671905517578125p731] 

; mpf : + 4346121488679581 731
; mpfd: + 4346121488679581 731 (2.21971e+220) class: Pos. norm. non-zero
; hwf : + 4346121488679581 731 (2.21971e+220) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011011010 #b1111011100001100011001000011011110111100001010011101)))
(assert (= r (fp #b0 #b11011011010 #b1111011100001100011001000011011110111100001010011101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
