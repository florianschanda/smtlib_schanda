(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.280754833246073420838229139917530119419097900390625p473 {- 1264407362389482 473 (-3.12359e+142)}
; -1.280754833246073420838229139917530119419097900390625p473 | == 1.280754833246073420838229139917530119419097900390625p473
; [HW: 1.280754833246073420838229139917530119419097900390625p473] 

; mpf : + 1264407362389482 473
; mpfd: + 1264407362389482 473 (3.12359e+142) class: Pos. norm. non-zero
; hwf : + 1264407362389482 473 (3.12359e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111011000 #b0100011111011111100011000111101011111100010111101010)))
(assert (= r (fp #b0 #b10111011000 #b0100011111011111100011000111101011111100010111101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
