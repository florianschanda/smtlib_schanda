(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6176439960176602905761455986066721379756927490234375p571 {+ 2781621270312759 571 (1.25029e+172)}
; 1.6176439960176602905761455986066721379756927490234375p571 | == 1.6176439960176602905761455986066721379756927490234375p571
; [HW: 1.6176439960176602905761455986066721379756927490234375p571] 

; mpf : + 2781621270312759 571
; mpfd: + 2781621270312759 571 (1.25029e+172) class: Pos. norm. non-zero
; hwf : + 2781621270312759 571 (1.25029e+172) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000111010 #b1001111000011101111010101011101101110111011100110111)))
(assert (= r (fp #b0 #b11000111010 #b1001111000011101111010101011101101110111011100110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
