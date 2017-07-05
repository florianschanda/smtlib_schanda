(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.46483812296907078831509352312423288822174072265625p25 {+ 2093444797391108 25 (4.91518e+007)}
; 1.46483812296907078831509352312423288822174072265625p25 | == 1.46483812296907078831509352312423288822174072265625p25
; [HW: 1.46483812296907078831509352312423288822174072265625p25] 

; mpf : + 2093444797391108 25
; mpfd: + 2093444797391108 25 (4.91518e+007) class: Pos. norm. non-zero
; hwf : + 2093444797391108 25 (4.91518e+007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011000 #b0111011011111111101000011001100000010110000100000100)))
(assert (= r (fp #b0 #b10000011000 #b0111011011111111101000011001100000010110000100000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
