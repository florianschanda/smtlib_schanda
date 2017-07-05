(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.342338487238582178662227306631393730640411376953125p-975 {+ 1541755483562258 -975 (4.20355e-294)}
; 1.342338487238582178662227306631393730640411376953125p-975 | == 1.342338487238582178662227306631393730640411376953125p-975
; [HW: 1.342338487238582178662227306631393730640411376953125p-975] 

; mpf : + 1541755483562258 -975
; mpfd: + 1541755483562258 -975 (4.20355e-294) class: Pos. norm. non-zero
; hwf : + 1541755483562258 -975 (4.20355e-294) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000110000 #b0101011110100011011111101011111011011010000100010010)))
(assert (= r (fp #b0 #b00000110000 #b0101011110100011011111101011111011011010000100010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
