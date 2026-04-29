(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3949279668002407817084531416185200214385986328125p-1003 {+ 1778597444119752 -1003 (1.62729e-302)}
; 1.3949279668002407817084531416185200214385986328125p-1003 S == 1.6702861831436195405586886408855207264423370361328125p-502
; [HW: 1.6702861831436195405586886408855207264423370361328125p-502] 

; mpf : + 3018700604637197 -502
; mpfd: + 3018700604637197 -502 (1.27565e-151) class: Pos. norm. non-zero
; hwf : + 3018700604637197 -502 (1.27565e-151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010100 #b0110010100011001111111111100110110101110110011001000)))
(assert (= r (fp #b0 #b01000001001 #b1010101110010111111000000001001110010000000000001101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
