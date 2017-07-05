(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8559032832924324818435479755862616002559661865234375p502 {- 3854645707700983 502 (-2.43004e+151)}
; -1.8559032832924324818435479755862616002559661865234375p502 | == 1.8559032832924324818435479755862616002559661865234375p502
; [HW: 1.8559032832924324818435479755862616002559661865234375p502] 

; mpf : + 3854645707700983 502
; mpfd: + 3854645707700983 502 (2.43004e+151) class: Pos. norm. non-zero
; hwf : + 3854645707700983 502 (2.43004e+151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111110101 #b1101101100011100011110100100001001000111101011110111)))
(assert (= r (fp #b0 #b10111110101 #b1101101100011100011110100100001001000111101011110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
