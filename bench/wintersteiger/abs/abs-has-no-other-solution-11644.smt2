(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6512844596857469969819476318662054836750030517578125p-84 {- 2933124449952925 -84 (-8.53694e-026)}
; -1.6512844596857469969819476318662054836750030517578125p-84 | == 1.6512844596857469969819476318662054836750030517578125p-84
; [HW: 1.6512844596857469969819476318662054836750030517578125p-84] 

; mpf : + 2933124449952925 -84
; mpfd: + 2933124449952925 -84 (8.53694e-026) class: Pos. norm. non-zero
; hwf : + 2933124449952925 -84 (8.53694e-026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110101011 #b1010011010111010100101000000111010111110010010011101)))
(assert (= r (fp #b0 #b01110101011 #b1010011010111010100101000000111010111110010010011101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
