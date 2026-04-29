(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7899532967826925489163158999872393906116485595703125p-843 {- 3557633373030629 -843 (-3.05179e-254)}
; Y = 1.4500556088882803340567306804587133228778839111328125p811 {+ 2026870272485261 811 (1.98021e+244)}
; -1.7899532967826925489163158999872393906116485595703125p-843 = 1.4500556088882803340567306804587133228778839111328125p811 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010110100 #b1100101000111010011000010001011100001100100011100101)))
(assert (= y (fp #b0 #b11100101010 #b0111001100110110110110000010100110001110011110001101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
