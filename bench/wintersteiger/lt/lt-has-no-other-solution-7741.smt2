(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.045179244530006545943479068228043615818023681640625p143 {+ 203469228830218 143 (1.16541e+043)}
; Y = 1.1968401946480569097985835469444282352924346923828125p57 {+ 886489427268525 57 (1.72483e+017)}
; 1.045179244530006545943479068228043615818023681640625p143 < 1.1968401946480569097985835469444282352924346923828125p57 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010001110 #b0000101110010000110111011111000110110110111000001010)))
(assert (= y (fp #b0 #b10000111000 #b0011001001100100000111100111011010001101001110101101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
