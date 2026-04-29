(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.84189177645882207201566416188143193721771240234375p623 {+ 3791543490746236 623 (6.41138e+187)}
; 1.84189177645882207201566416188143193721771240234375p623 S == 1.9193185126282827912547190862824209034442901611328125p311
; [HW: 1.9193185126282827912547190862824209034442901611328125p311] 

; mpf : + 4140242510907533 311
; mpfd: + 4140242510907533 311 (8.00711e+093) class: Pos. norm. non-zero
; hwf : + 4140242510907533 311 (8.00711e+093) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001101110 #b1101011110000110001110000010111010101001011101111100)))
(assert (= r (fp #b0 #b10100110110 #b1110101101011000011101010100001001011000100010001101)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
