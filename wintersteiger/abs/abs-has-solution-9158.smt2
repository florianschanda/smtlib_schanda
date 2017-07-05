(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.245668640896249623750691171153448522090911865234375p167 {- 1106393199596966 167 (-2.3303e+050)}
; -1.245668640896249623750691171153448522090911865234375p167 | == 1.245668640896249623750691171153448522090911865234375p167
; [HW: 1.245668640896249623750691171153448522090911865234375p167] 

; mpf : + 1106393199596966 167
; mpfd: + 1106393199596966 167 (2.3303e+050) class: Pos. norm. non-zero
; hwf : + 1106393199596966 167 (2.3303e+050) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010100110 #b0011111011100100001000111101101001001101010110100110)))
(assert (= r (fp #b0 #b10010100110 #b0011111011100100001000111101101001001101010110100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
