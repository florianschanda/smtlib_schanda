(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.46932482565128896823125614901073276996612548828125p-685 {- 2113651109918868 -685 (-9.15315e-207)}
; -1.46932482565128896823125614901073276996612548828125p-685 | == 1.46932482565128896823125614901073276996612548828125p-685
; [HW: 1.46932482565128896823125614901073276996612548828125p-685] 

; mpf : + 2113651109918868 -685
; mpfd: + 2113651109918868 -685 (9.15315e-207) class: Pos. norm. non-zero
; hwf : + 2113651109918868 -685 (9.15315e-207) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101010010 #b0111100000100101101010111111100101011111100010010100)))
(assert (= r (fp #b0 #b00101010010 #b0111100000100101101010111111100101011111100010010100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
