(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.700823668180967640495282466872595250606536865234375p-205 {- 3156229210872230 -205 (-3.30758e-062)}
; -1.700823668180967640495282466872595250606536865234375p-205 | == 1.700823668180967640495282466872595250606536865234375p-205
; [HW: 1.700823668180967640495282466872595250606536865234375p-205] 

; mpf : + 3156229210872230 -205
; mpfd: + 3156229210872230 -205 (3.30758e-062) class: Pos. norm. non-zero
; hwf : + 3156229210872230 -205 (3.30758e-062) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100110010 #b1011001101101001001011100000111100011001100110100110)))
(assert (= r (fp #b0 #b01100110010 #b1011001101101001001011100000111100011001100110100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
