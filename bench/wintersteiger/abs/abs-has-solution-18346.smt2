(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9480859189435493217246175845502875745296478271484375p-45 {+ 4269799391269383 -45 (5.53679e-014)}
; 1.9480859189435493217246175845502875745296478271484375p-45 | == 1.9480859189435493217246175845502875745296478271484375p-45
; [HW: 1.9480859189435493217246175845502875745296478271484375p-45] 

; mpf : + 4269799391269383 -45
; mpfd: + 4269799391269383 -45 (5.53679e-014) class: Pos. norm. non-zero
; hwf : + 4269799391269383 -45 (5.53679e-014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111010010 #b1111001010110101110000100011111110101001001000000111)))
(assert (= r (fp #b0 #b01111010010 #b1111001010110101110000100011111110101001001000000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
