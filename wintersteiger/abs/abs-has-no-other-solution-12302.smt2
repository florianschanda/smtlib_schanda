(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2118481732291355168484869864187203347682952880859375p293 {+ 954079354013855 293 (1.92858e+088)}
; 1.2118481732291355168484869864187203347682952880859375p293 | == 1.2118481732291355168484869864187203347682952880859375p293
; [HW: 1.2118481732291355168484869864187203347682952880859375p293] 

; mpf : + 954079354013855 293
; mpfd: + 954079354013855 293 (1.92858e+088) class: Pos. norm. non-zero
; hwf : + 954079354013855 293 (1.92858e+088) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100100100 #b0011011000111011101011101000111110111100100010011111)))
(assert (= r (fp #b0 #b10100100100 #b0011011000111011101011101000111110111100100010011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
