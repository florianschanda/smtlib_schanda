(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8514272612917344051908230539993382990360260009765625p-916 {+ 3834487496686537 -916 (3.34219e-276)}
; 1.8514272612917344051908230539993382990360260009765625p-916 S == 1.360671621403097386604486018768511712551116943359375p-458
; [HW: 1.360671621403097386604486018768511712551116943359375p-458] 

; mpf : + 1624320579754102 -458
; mpfd: + 1624320579754102 -458 (1.82816e-138) class: Pos. norm. non-zero
; hwf : + 1624320579754102 -458 (1.82816e-138) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101011 #b1101100111110111001000110001001000101011101111001001)))
(assert (= r (fp #b0 #b01000110101 #b0101110001010100111110011011001010000101100001110110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
