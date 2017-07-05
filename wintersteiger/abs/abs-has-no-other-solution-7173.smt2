(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.92627666096706207099487073719501495361328125p214 {- 4171579225173248 214 (-5.07152e+064)}
; -1.92627666096706207099487073719501495361328125p214 | == 1.92627666096706207099487073719501495361328125p214
; [HW: 1.92627666096706207099487073719501495361328125p214] 

; mpf : + 4171579225173248 214
; mpfd: + 4171579225173248 214 (5.07152e+064) class: Pos. norm. non-zero
; hwf : + 4171579225173248 214 (5.07152e+064) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011010101 #b1110110100100000011101111001110111100110110100000000)))
(assert (= r (fp #b0 #b10011010101 #b1110110100100000011101111001110111100110110100000000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
