(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2967694231088746636970654435572214424610137939453125p907 {+ 1336530663328085 907 (1.40304e+273)}
; Y = -1.5144127944615402014960636734031140804290771484375p812 {- 2316709269451608 812 (-4.13619e+244)}
; 1.2967694231088746636970654435572214424610137939453125p907 % -1.5144127944615402014960636734031140804290771484375p812 == 1.041072139041688160432386212050914764404296875p812
; [HW: 1.041072139041688160432386212050914764404296875p812] 

; mpf : + 184972470083456 812
; mpfd: + 184972470083456 812 (2.8434e+244) class: Pos. norm. non-zero
; hwf : + 184972470083456 812 (2.8434e+244) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001010 #b0100101111111001000101001011011010110100100101010101)))
(assert (= y (fp #b1 #b11100101011 #b1000001110110000100011101001000011011011001101011000)))
(assert (= r (fp #b1 #b11100101001 #xe4b369ab94f60)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
