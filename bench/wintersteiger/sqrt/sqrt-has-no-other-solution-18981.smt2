(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5097236398098445864235372937400825321674346923828125p93 {+ 2295591194309549 93 (1.49516e+028)}
; 1.5097236398098445864235372937400825321674346923828125p93 S == 1.737655685001976646475441157235763967037200927734375p46
; [HW: 1.737655685001976646475441157235763967037200927734375p46] 

; mpf : + 3322105868102630 46
; mpfd: + 3322105868102630 46 (1.22277e+014) class: Pos. norm. non-zero
; hwf : + 3322105868102630 46 (1.22277e+014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011100 #b1000001001111101001111111001101011111011001110101101)))
(assert (= r (fp #b0 #b10000101101 #b1011110011010111000000001100001011001010101111100110)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
