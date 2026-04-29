(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5186156975954687720076208279351703822612762451171875p745 {- 2335637462439443 745 (-2.81057e+224)}
; -1.5186156975954687720076208279351703822612762451171875p745 | == 1.5186156975954687720076208279351703822612762451171875p745
; [HW: 1.5186156975954687720076208279351703822612762451171875p745] 

; mpf : + 2335637462439443 745
; mpfd: + 2335637462439443 745 (2.81057e+224) class: Pos. norm. non-zero
; hwf : + 2335637462439443 745 (2.81057e+224) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011101000 #b1000010011000011111111111001010001011101011000010011)))
(assert (= r (fp #b0 #b11011101000 #b1000010011000011111111111001010001011101011000010011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
