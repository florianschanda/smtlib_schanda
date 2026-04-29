(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.346677171134717188039076063432730734348297119140625p734 {- 1561295178740170 734 (-1.21697e+221)}
; -1.346677171134717188039076063432730734348297119140625p734 | == 1.346677171134717188039076063432730734348297119140625p734
; [HW: 1.346677171134717188039076063432730734348297119140625p734] 

; mpf : + 1561295178740170 734
; mpfd: + 1561295178740170 734 (1.21697e+221) class: Pos. norm. non-zero
; hwf : + 1561295178740170 734 (1.21697e+221) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011011101 #b0101100010111111110101011100100001001011000111001010)))
(assert (= r (fp #b0 #b11011011101 #b0101100010111111110101011100100001001011000111001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
