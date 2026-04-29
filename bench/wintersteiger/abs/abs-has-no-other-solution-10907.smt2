(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8481720367438645435953503692871890962123870849609375p429 {- 3819827268625743 429 (-2.56219e+129)}
; -1.8481720367438645435953503692871890962123870849609375p429 | == 1.8481720367438645435953503692871890962123870849609375p429
; [HW: 1.8481720367438645435953503692871890962123870849609375p429] 

; mpf : + 3819827268625743 429
; mpfd: + 3819827268625743 429 (2.56219e+129) class: Pos. norm. non-zero
; hwf : + 3819827268625743 429 (2.56219e+129) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110101100 #b1101100100100001110011010111011100110010010101001111)))
(assert (= r (fp #b0 #b10110101100 #b1101100100100001110011010111011100110010010101001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
