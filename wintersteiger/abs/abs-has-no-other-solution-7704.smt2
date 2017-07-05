(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.876222002451009007728544020210392773151397705078125p276 {- 3946153083732194 276 (-2.27805e+083)}
; -1.876222002451009007728544020210392773151397705078125p276 | == 1.876222002451009007728544020210392773151397705078125p276
; [HW: 1.876222002451009007728544020210392773151397705078125p276] 

; mpf : + 3946153083732194 276
; mpfd: + 3946153083732194 276 (2.27805e+083) class: Pos. norm. non-zero
; hwf : + 3946153083732194 276 (2.27805e+083) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100010011 #b1110000001010000000101011100110010010000000011100010)))
(assert (= r (fp #b0 #b10100010011 #b1110000001010000000101011100110010010000000011100010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
