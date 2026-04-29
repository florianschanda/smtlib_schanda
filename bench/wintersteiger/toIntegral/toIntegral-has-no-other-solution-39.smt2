(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6135959854772694566094060064642690122127532958984375 200 {+ 2763390651551463 200 (2.59295e+060)}
; 1.6135959854772694566094060064642690122127532958984375 200 I == 1.6135959854772694566094060064642690122127532958984375 200
; [HW: 1.6135959854772694566094060064642690122127532958984375 200] 

; mpf : + 2763390651551463 200
; mpfd: + 2763390651551463 200 (2.59295e+060) class: Pos. norm. non-zero
; hwf : + 2763390651551463 200 (2.59295e+060) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011000111 #b1001110100010100101000000110001010010100111011100111)))
(assert (= r (fp #b0 #b10011000111 #b1001110100010100101000000110001010010100111011100111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
