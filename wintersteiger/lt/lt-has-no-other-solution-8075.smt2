(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7820864405955487708155260406783781945705413818359375p88 {+ 3522204202437631 88 (5.51529e+026)}
; Y = -1.5751876223058685067002215873799286782741546630859375p470 {- 2590414761484831 470 (-4.80209e+141)}
; 1.7820864405955487708155260406783781945705413818359375p88 < -1.5751876223058685067002215873799286782741546630859375p470 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001010111 #b1100100000110110110100010010010100000000101111111111)))
(assert (= y (fp #b1 #b10111010101 #b1001001100111111011111101111101011011110001000011111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
