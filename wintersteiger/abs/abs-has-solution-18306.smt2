(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.89732608875174602047763983136974275112152099609375p63 {- 4041197438932188 63 (-1.74997e+019)}
; -1.89732608875174602047763983136974275112152099609375p63 | == 1.89732608875174602047763983136974275112152099609375p63
; [HW: 1.89732608875174602047763983136974275112152099609375p63] 

; mpf : + 4041197438932188 63
; mpfd: + 4041197438932188 63 (1.74997e+019) class: Pos. norm. non-zero
; hwf : + 4041197438932188 63 (1.74997e+019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000111110 #b1110010110110111001010011001110100001001010011011100)))
(assert (= r (fp #b0 #b10000111110 #b1110010110110111001010011001110100001001010011011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
