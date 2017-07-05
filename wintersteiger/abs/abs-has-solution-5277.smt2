(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7161926742400994694293103748350404202938079833984375p-1012 {+ 3225445060833191 -1012 (3.9103e-305)}
; 1.7161926742400994694293103748350404202938079833984375p-1012 | == 1.7161926742400994694293103748350404202938079833984375p-1012
; [HW: 1.7161926742400994694293103748350404202938079833984375p-1012] 

; mpf : + 3225445060833191 -1012
; mpfd: + 3225445060833191 -1012 (3.9103e-305) class: Pos. norm. non-zero
; hwf : + 3225445060833191 -1012 (3.9103e-305) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000001011 #b1011011101011000011001110011000101111110111110100111)))
(assert (= r (fp #b0 #b00000001011 #b1011011101011000011001110011000101111110111110100111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
