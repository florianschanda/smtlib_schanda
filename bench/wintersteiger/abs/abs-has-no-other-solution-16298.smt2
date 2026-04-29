(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.923921919903932131745705191860906779766082763671875p-924 {- 4160974414198782 -924 (-1.35666e-278)}
; -1.923921919903932131745705191860906779766082763671875p-924 | == 1.923921919903932131745705191860906779766082763671875p-924
; [HW: 1.923921919903932131745705191860906779766082763671875p-924] 

; mpf : + 4160974414198782 -924
; mpfd: + 4160974414198782 -924 (1.35666e-278) class: Pos. norm. non-zero
; hwf : + 4160974414198782 -924 (1.35666e-278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001100011 #b1110110010000110001001011001111000001011011111111110)))
(assert (= r (fp #b0 #b00001100011 #b1110110010000110001001011001111000001011011111111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
