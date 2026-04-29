(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4598528027044961330460637327632866799831390380859375p668 {+ 2070992910905247 668 (1.78791e+201)}
; 1.4598528027044961330460637327632866799831390380859375p668 | == 1.4598528027044961330460637327632866799831390380859375p668
; [HW: 1.4598528027044961330460637327632866799831390380859375p668] 

; mpf : + 2070992910905247 668
; mpfd: + 2070992910905247 668 (1.78791e+201) class: Pos. norm. non-zero
; hwf : + 2070992910905247 668 (1.78791e+201) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010011011 #b0111010110111000111010011100110010010110111110011111)))
(assert (= r (fp #b0 #b11010011011 #b0111010110111000111010011100110010010110111110011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
