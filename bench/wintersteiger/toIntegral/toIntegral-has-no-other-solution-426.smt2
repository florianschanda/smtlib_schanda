(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.094275625191472922637103692977689206600189208984375 705 {+ 424579670482438 705 (1.84193e+212)}
; 1.094275625191472922637103692977689206600189208984375 705 I == 1.094275625191472922637103692977689206600189208984375 705
; [HW: 1.094275625191472922637103692977689206600189208984375 705] 

; mpf : + 424579670482438 705
; mpfd: + 424579670482438 705 (1.84193e+212) class: Pos. norm. non-zero
; hwf : + 424579670482438 705 (1.84193e+212) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000000 #b0001100000100010011100101000011100000001111000000110)))
(assert (= r (fp #b0 #b11011000000 #b0001100000100010011100101000011100000001111000000110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
