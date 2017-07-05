(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.86861891569449056760277017019689083099365234375p576 {- 3911911825048672 576 (-4.62166e+173)}
; -1.86861891569449056760277017019689083099365234375p576 | == 1.86861891569449056760277017019689083099365234375p576
; [HW: 1.86861891569449056760277017019689083099365234375p576] 

; mpf : + 3911911825048672 576
; mpfd: + 3911911825048672 576 (4.62166e+173) class: Pos. norm. non-zero
; hwf : + 3911911825048672 576 (4.62166e+173) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000111111 #b1101111001011101110011110010101110011000010001100000)))
(assert (= r (fp #b0 #b11000111111 #b1101111001011101110011110010101110011000010001100000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
