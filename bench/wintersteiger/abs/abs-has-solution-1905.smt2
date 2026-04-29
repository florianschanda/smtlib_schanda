(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9928529595016557518505351254134438931941986083984375p-101 {+ 4471412218445351 -101 (7.86042e-031)}
; 1.9928529595016557518505351254134438931941986083984375p-101 | == 1.9928529595016557518505351254134438931941986083984375p-101
; [HW: 1.9928529595016557518505351254134438931941986083984375p-101] 

; mpf : + 4471412218445351 -101
; mpfd: + 4471412218445351 -101 (7.86042e-031) class: Pos. norm. non-zero
; hwf : + 4471412218445351 -101 (7.86042e-031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110011010 #b1111111000101011100111001000111011001011111000100111)))
(assert (= r (fp #b0 #b01110011010 #b1111111000101011100111001000111011001011111000100111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
