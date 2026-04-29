(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8506489507863237431450897929607890546321868896484375p-473 {+ 3830982297784391 -473 (7.58815e-143)}
; 1.8506489507863237431450897929607890546321868896484375p-473 | == 1.8506489507863237431450897929607890546321868896484375p-473
; [HW: 1.8506489507863237431450897929607890546321868896484375p-473] 

; mpf : + 3830982297784391 -473
; mpfd: + 3830982297784391 -473 (7.58815e-143) class: Pos. norm. non-zero
; hwf : + 3830982297784391 -473 (7.58815e-143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100110 #b1101100111000100001000010011000000000001000001000111)))
(assert (= r (fp #b0 #b01000100110 #b1101100111000100001000010011000000000001000001000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
