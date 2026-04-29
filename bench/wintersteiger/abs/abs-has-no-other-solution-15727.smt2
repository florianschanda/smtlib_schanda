(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.309983467567831905142838877509348094463348388671875p148 {+ 1396041429029502 148 (4.67418e+044)}
; 1.309983467567831905142838877509348094463348388671875p148 | == 1.309983467567831905142838877509348094463348388671875p148
; [HW: 1.309983467567831905142838877509348094463348388671875p148] 

; mpf : + 1396041429029502 148
; mpfd: + 1396041429029502 148 (4.67418e+044) class: Pos. norm. non-zero
; hwf : + 1396041429029502 148 (4.67418e+044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010010011 #b0100111101011011000100111001011110000001001001111110)))
(assert (= r (fp #b0 #b10010010011 #b0100111101011011000100111001011110000001001001111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
