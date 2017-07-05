(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4400771863233539082926881746971048414707183837890625p627 {+ 1981931452340113 627 (8.02035e+188)}
; 1.4400771863233539082926881746971048414707183837890625p627 S == 1.697101756715462261837501500849612057209014892578125p313
; [HW: 1.697101756715462261837501500849612057209014892578125p313] 

; mpf : + 3139467211783074 313
; mpfd: + 3139467211783074 313 (2.83202e+094) class: Pos. norm. non-zero
; hwf : + 3139467211783074 313 (2.83202e+094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110010 #b0111000010101000111001100000001011111001011110010001)))
(assert (= r (fp #b0 #b10100111000 #b1011001001110101010000101011111100010011101110100010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
