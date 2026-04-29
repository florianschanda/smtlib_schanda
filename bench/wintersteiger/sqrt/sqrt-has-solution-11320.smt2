(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.174834055676012400937224811059422791004180908203125p-758 {+ 787382587994162 -758 (7.7489e-229)}
; 1.174834055676012400937224811059422791004180908203125p-758 S == 1.0838976223223355521696475989301688969135284423828125p-379
; [HW: 1.0838976223223355521696475989301688969135284423828125p-379] 

; mpf : + 377841300628141 -379
; mpfd: + 377841300628141 -379 (8.80278e-115) class: Pos. norm. non-zero
; hwf : + 377841300628141 -379 (8.80278e-115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100001001 #b0010110011000001111011001011011101011011000000110010)))
(assert (= r (fp #b0 #b01010000100 #b0001010101111010010100001000100000010110001010101101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
