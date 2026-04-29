(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7979709466661224492867177104926668107509613037109375p762 {- 3593741658058031 762 (-4.36154e+229)}
; -1.7979709466661224492867177104926668107509613037109375p762 | == 1.7979709466661224492867177104926668107509613037109375p762
; [HW: 1.7979709466661224492867177104926668107509613037109375p762] 

; mpf : + 3593741658058031 762
; mpfd: + 3593741658058031 762 (4.36154e+229) class: Pos. norm. non-zero
; hwf : + 3593741658058031 762 (4.36154e+229) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011111001 #b1100110001000111110100101110111100010110110100101111)))
(assert (= r (fp #b0 #b11011111001 #b1100110001000111110100101110111100010110110100101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
