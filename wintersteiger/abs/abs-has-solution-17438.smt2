(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.410086945588397977502381763770245015621185302734375p392 {- 1846867415341414 392 (-1.42234e+118)}
; -1.410086945588397977502381763770245015621185302734375p392 | == 1.410086945588397977502381763770245015621185302734375p392
; [HW: 1.410086945588397977502381763770245015621185302734375p392] 

; mpf : + 1846867415341414 392
; mpfd: + 1846867415341414 392 (1.42234e+118) class: Pos. norm. non-zero
; hwf : + 1846867415341414 392 (1.42234e+118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110000111 #b0110100011111011011101010100001111010001100101100110)))
(assert (= r (fp #b0 #b10110000111 #b0110100011111011011101010100001111010001100101100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
