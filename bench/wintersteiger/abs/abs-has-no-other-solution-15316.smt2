(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7763673956670837927873662920319475233554840087890625p639 {- 3496447913828881 639 (-4.05229e+192)}
; -1.7763673956670837927873662920319475233554840087890625p639 | == 1.7763673956670837927873662920319475233554840087890625p639
; [HW: 1.7763673956670837927873662920319475233554840087890625p639] 

; mpf : + 3496447913828881 639
; mpfd: + 3496447913828881 639 (4.05229e+192) class: Pos. norm. non-zero
; hwf : + 3496447913828881 639 (4.05229e+192) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001111110 #b1100011011000000000000110111111000010010001000010001)))
(assert (= r (fp #b0 #b11001111110 #b1100011011000000000000110111111000010010001000010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
