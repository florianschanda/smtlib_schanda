(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.51709395990335682569138953112997114658355712890625p444 {- 2328784165136292 444 (-6.89177e+133)}
; -1.51709395990335682569138953112997114658355712890625p444 | == 1.51709395990335682569138953112997114658355712890625p444
; [HW: 1.51709395990335682569138953112997114658355712890625p444] 

; mpf : + 2328784165136292 444
; mpfd: + 2328784165136292 444 (6.89177e+133) class: Pos. norm. non-zero
; hwf : + 2328784165136292 444 (6.89177e+133) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110111011 #b1000010001100000010001010000111010111110011110100100)))
(assert (= r (fp #b0 #b10110111011 #b1000010001100000010001010000111010111110011110100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
