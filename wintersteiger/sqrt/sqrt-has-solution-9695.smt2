(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9185323636042943551416328773484565317630767822265625p808 {+ 4136702010456041 808 (3.27496e+243)}
; 1.9185323636042943551416328773484565317630767822265625p808 S == 1.38511095714541720980150785180740058422088623046875p404
; [HW: 1.38511095714541720980150785180740058422088623046875p404] 

; mpf : + 1734385563096396 404
; mpfd: + 1734385563096396 404 (5.72272e+121) class: Pos. norm. non-zero
; hwf : + 1734385563096396 404 (5.72272e+121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100100111 #b1110101100100100111011111101110111111111011111101001)))
(assert (= r (fp #b0 #b10110010011 #b0110001010010110101000011011011001000101010101001100)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
