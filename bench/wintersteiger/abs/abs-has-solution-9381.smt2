(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.517749010008560883733252921956591308116912841796875p-631 {- 2331734248545998 -631 (-1.70323e-190)}
; -1.517749010008560883733252921956591308116912841796875p-631 | == 1.517749010008560883733252921956591308116912841796875p-631
; [HW: 1.517749010008560883733252921956591308116912841796875p-631] 

; mpf : + 2331734248545998 -631
; mpfd: + 2331734248545998 -631 (1.70323e-190) class: Pos. norm. non-zero
; hwf : + 2331734248545998 -631 (1.70323e-190) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110001000 #b1000010010001011001100101111100110000101111011001110)))
(assert (= r (fp #b0 #b00110001000 #b1000010010001011001100101111100110000101111011001110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
