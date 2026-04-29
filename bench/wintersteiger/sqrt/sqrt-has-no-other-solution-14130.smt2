(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.87570007897996493539949369733221828937530517578125p-524 {+ 3943802549382484 -524 (3.41543e-158)}
; 1.87570007897996493539949369733221828937530517578125p-524 S == 1.36956200260519977973672212101519107818603515625p-262
; [HW: 1.36956200260519977973672212101519107818603515625p-262] 

; mpf : + 1664359297223072 -262
; mpfd: + 1664359297223072 -262 (1.84809e-079) class: Pos. norm. non-zero
; hwf : + 1664359297223072 -262 (1.84809e-079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111110011 #b1110000000101101111000010110000001010010110101010100)))
(assert (= r (fp #b0 #b01011111001 #b0101111010011011100111011000101100001000100110100000)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
