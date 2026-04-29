(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1528458204061138303586631081998348236083984375p379 {- 688356379826112 379 (-1.41951e+114)}
; -1.1528458204061138303586631081998348236083984375p379 | == 1.1528458204061138303586631081998348236083984375p379
; [HW: 1.1528458204061138303586631081998348236083984375p379] 

; mpf : + 688356379826112 379
; mpfd: + 688356379826112 379 (1.41951e+114) class: Pos. norm. non-zero
; hwf : + 688356379826112 379 (1.41951e+114) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101111010 #b0010011100100000111001110101011111111001011111000000)))
(assert (= r (fp #b0 #b10101111010 #b0010011100100000111001110101011111111001011111000000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
