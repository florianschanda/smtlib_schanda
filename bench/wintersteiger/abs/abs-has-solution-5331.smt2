(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.872918417499707555151644555735401809215545654296875p604 {- 3931275059776526 604 (-1.24347e+182)}
; -1.872918417499707555151644555735401809215545654296875p604 | == 1.872918417499707555151644555735401809215545654296875p604
; [HW: 1.872918417499707555151644555735401809215545654296875p604] 

; mpf : + 3931275059776526 604
; mpfd: + 3931275059776526 604 (1.24347e+182) class: Pos. norm. non-zero
; hwf : + 3931275059776526 604 (1.24347e+182) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011011 #b1101111101110111100101001101011100111100110000001110)))
(assert (= r (fp #b0 #b11001011011 #b1101111101110111100101001101011100111100110000001110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
