(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.955147931670330851972039454267360270023345947265625p-741 {+ 4301603869154202 -741 (1.69026e-223)}
; 1.955147931670330851972039454267360270023345947265625p-741 | == 1.955147931670330851972039454267360270023345947265625p-741
; [HW: 1.955147931670330851972039454267360270023345947265625p-741] 

; mpf : + 4301603869154202 -741
; mpfd: + 4301603869154202 -741 (1.69026e-223) class: Pos. norm. non-zero
; hwf : + 4301603869154202 -741 (1.69026e-223) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100011010 #b1111010010000100100100110010100101011101101110011010)))
(assert (= r (fp #b0 #b00100011010 #b1111010010000100100100110010100101011101101110011010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
