(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.520255229161409094018608811893500387668609619140625p276 {+ 2343021256188874 276 (1.84585e+083)}
; 1.520255229161409094018608811893500387668609619140625p276 S == 1.2329863053421998841940876445733010768890380859375p138
; [HW: 1.2329863053421998841940876445733010768890380859375p138] 

; mpf : + 1049277037921560 138
; mpfd: + 1049277037921560 138 (4.29633e+041) class: Pos. norm. non-zero
; hwf : + 1049277037921560 138 (4.29633e+041) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010011 #b1000010100101111011100100101101011010010001111001010)))
(assert (= r (fp #b0 #b10010001001 #b0011101110100100111111011001000111011100010100011000)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
