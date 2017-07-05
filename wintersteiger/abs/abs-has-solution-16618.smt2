(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1848531694841961670050523025565780699253082275390625p-282 {- 832504665207281 -282 (-1.52477e-085)}
; -1.1848531694841961670050523025565780699253082275390625p-282 | == 1.1848531694841961670050523025565780699253082275390625p-282
; [HW: 1.1848531694841961670050523025565780699253082275390625p-282] 

; mpf : + 832504665207281 -282
; mpfd: + 832504665207281 -282 (1.52477e-085) class: Pos. norm. non-zero
; hwf : + 832504665207281 -282 (1.52477e-085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011100101 #b0010111101010010100010011000110101111111000111110001)))
(assert (= r (fp #b0 #b01011100101 #b0010111101010010100010011000110101111111000111110001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
