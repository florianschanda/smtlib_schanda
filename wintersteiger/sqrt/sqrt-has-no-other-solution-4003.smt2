(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1166152655396335280357789088157005608081817626953125p259 {+ 525188466430005 259 (1.03436e+078)}
; 1.1166152655396335280357789088157005608081817626953125p259 S == 1.4943997226576517523000120490905828773975372314453125p129
; [HW: 1.4943997226576517523000120490905828773975372314453125p129] 

; mpf : + 2226578406733077 129
; mpfd: + 2226578406733077 129 (1.01704e+039) class: Pos. norm. non-zero
; hwf : + 2226578406733077 129 (1.01704e+039) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000010 #b0001110111011010011111110111111110110101000000110101)))
(assert (= r (fp #b0 #b10010000000 #b0111111010010000111110101110111111110111010100010101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
