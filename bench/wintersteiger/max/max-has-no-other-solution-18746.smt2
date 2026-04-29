(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7557738560093547608431663320516236126422882080078125p-415 {+ 3403702856300093 -415 (2.07501e-125)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.7557738560093547608431663320516236126422882080078125p-415 M -oo == 1.7557738560093547608431663320516236126422882080078125p-415
; [HW: 1.7557738560093547608431663320516236126422882080078125p-415] 

; mpf : + 3403702856300093 -415
; mpfd: + 3403702856300093 -415 (2.07501e-125) class: Pos. norm. non-zero
; hwf : + 3403702856300093 -415 (2.07501e-125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001100000 #b1100000101111010011001010011101010111011011000111101)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b0 #b01001100000 #b1100000101111010011001010011101010111011011000111101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
