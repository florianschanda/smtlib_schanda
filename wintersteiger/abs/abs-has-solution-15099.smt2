(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0807334028378645651713441111496649682521820068359375p-835 {+ 363590922936959 -835 (4.71707e-252)}
; 1.0807334028378645651713441111496649682521820068359375p-835 | == 1.0807334028378645651713441111496649682521820068359375p-835
; [HW: 1.0807334028378645651713441111496649682521820068359375p-835] 

; mpf : + 363590922936959 -835
; mpfd: + 363590922936959 -835 (4.71707e-252) class: Pos. norm. non-zero
; hwf : + 363590922936959 -835 (4.71707e-252) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111100 #b0001010010101010111100011011110011100010001001111111)))
(assert (= r (fp #b0 #b00010111100 #b0001010010101010111100011011110011100010001001111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
