(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4692597759410463975626726096379570662975311279296875p-882 {- 2113358152068059 -882 (-4.55662e-266)}
; -1.4692597759410463975626726096379570662975311279296875p-882 | == 1.4692597759410463975626726096379570662975311279296875p-882
; [HW: 1.4692597759410463975626726096379570662975311279296875p-882] 

; mpf : + 2113358152068059 -882
; mpfd: + 2113358152068059 -882 (4.55662e-266) class: Pos. norm. non-zero
; hwf : + 2113358152068059 -882 (4.55662e-266) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010001101 #b0111100000100001011010001001111011111110101111011011)))
(assert (= r (fp #b0 #b00010001101 #b0111100000100001011010001001111011111110101111011011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
