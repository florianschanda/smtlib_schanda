(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.88953743135744733905312386923469603061676025390625p502 {+ 4006120444393508 502 (2.47408e+151)}
; 1.88953743135744733905312386923469603061676025390625p502 | == 1.88953743135744733905312386923469603061676025390625p502
; [HW: 1.88953743135744733905312386923469603061676025390625p502] 

; mpf : + 4006120444393508 502
; mpfd: + 4006120444393508 502 (2.47408e+151) class: Pos. norm. non-zero
; hwf : + 4006120444393508 502 (2.47408e+151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110101 #b1110001110111000101110011010000000111111100000100100)))
(assert (= r (fp #b0 #b10111110101 #b1110001110111000101110011010000000111111100000100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
