(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1258882921348949412987394680385477840900421142578125p949 {+ 566950465549021 949 (5.35749e+285)}
; 1.1258882921348949412987394680385477840900421142578125p949 S == 1.50059207790451498709671795950271189212799072265625p474
; [HW: 1.50059207790451498709671795950271189212799072265625p474] 

; mpf : + 2254466295515396 474
; mpfd: + 2254466295515396 474 (7.31949e+142) class: Pos. norm. non-zero
; hwf : + 2254466295515396 474 (7.31949e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110110100 #b0010000000111010001101110001000110101011001011011101)))
(assert (= r (fp #b0 #b10111011001 #b1000000000100110110011010110101100111100100100000100)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
