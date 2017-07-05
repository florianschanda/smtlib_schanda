(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3910674493319021838289017978240735828876495361328125p203 {- 1761211219087885 203 (-1.78829e+061)}
; -1.3910674493319021838289017978240735828876495361328125p203 | == 1.3910674493319021838289017978240735828876495361328125p203
; [HW: 1.3910674493319021838289017978240735828876495361328125p203] 

; mpf : + 1761211219087885 203
; mpfd: + 1761211219087885 203 (1.78829e+061) class: Pos. norm. non-zero
; hwf : + 1761211219087885 203 (1.78829e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011001010 #b0110010000011100111111110001000101101001001000001101)))
(assert (= r (fp #b0 #b10011001010 #b0110010000011100111111110001000101101001001000001101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
