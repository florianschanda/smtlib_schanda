(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.449398690456466187725936833885498344898223876953125p-482 {- 2023911774880530 -482 (-1.16073e-145)}
; -1.449398690456466187725936833885498344898223876953125p-482 | == 1.449398690456466187725936833885498344898223876953125p-482
; [HW: 1.449398690456466187725936833885498344898223876953125p-482] 

; mpf : + 2023911774880530 -482
; mpfd: + 2023911774880530 -482 (1.16073e-145) class: Pos. norm. non-zero
; hwf : + 2023911774880530 -482 (1.16073e-145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000011101 #b0111001100001011110010101110011001100000001100010010)))
(assert (= r (fp #b0 #b01000011101 #b0111001100001011110010101110011001100000001100010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
