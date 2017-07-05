(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7715151865261800079309750799438916146755218505859375p-78 {+ 3474595506549983 -78 (5.86145e-024)}
; 1.7715151865261800079309750799438916146755218505859375p-78 S == 1.3309827897182515688001558373798616230487823486328125p-39
; [HW: 1.3309827897182515688001558373798616230487823486328125p-39] 

; mpf : + 1490613968441165 -39
; mpfd: + 1490613968441165 -39 (2.42104e-012) class: Pos. norm. non-zero
; hwf : + 1490613968441165 -39 (2.42104e-012) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110110001 #b1100010110000010000001001110111001111111010011011111)))
(assert (= r (fp #b0 #b01111011000 #b0101010010111011010010011100000101100000111101001101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
