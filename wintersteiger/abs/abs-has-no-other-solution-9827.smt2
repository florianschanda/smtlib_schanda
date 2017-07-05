(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2966170074315532811937146107084117829799652099609375p-418 {- 1335844244140495 -418 (-1.91546e-126)}
; -1.2966170074315532811937146107084117829799652099609375p-418 | == 1.2966170074315532811937146107084117829799652099609375p-418
; [HW: 1.2966170074315532811937146107084117829799652099609375p-418] 

; mpf : + 1335844244140495 -418
; mpfd: + 1335844244140495 -418 (1.91546e-126) class: Pos. norm. non-zero
; hwf : + 1335844244140495 -418 (1.91546e-126) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001011101 #b0100101111101111000101111001101001011011000111001111)))
(assert (= r (fp #b0 #b01001011101 #b0100101111101111000101111001101001011011000111001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
