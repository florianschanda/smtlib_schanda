(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.79516151867407369735474276239983737468719482421875p-627 {- 3581089119199916 -627 (-3.22327e-189)}
; -1.79516151867407369735474276239983737468719482421875p-627 | == 1.79516151867407369735474276239983737468719482421875p-627
; [HW: 1.79516151867407369735474276239983737468719482421875p-627] 

; mpf : + 3581089119199916 -627
; mpfd: + 3581089119199916 -627 (3.22327e-189) class: Pos. norm. non-zero
; hwf : + 3581089119199916 -627 (3.22327e-189) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110001100 #b1100101110001111101101001000110110111110001010101100)))
(assert (= r (fp #b0 #b00110001100 #b1100101110001111101101001000110110111110001010101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
