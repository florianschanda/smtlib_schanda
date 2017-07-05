(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.436091965329762132341784308664500713348388671875p15 {- 1963983612558384 15 (-47057.9)}
; -1.436091965329762132341784308664500713348388671875p15 | == 1.436091965329762132341784308664500713348388671875p15
; [HW: 1.436091965329762132341784308664500713348388671875p15] 

; mpf : + 1963983612558384 15
; mpfd: + 1963983612558384 15 (47057.9) class: Pos. norm. non-zero
; hwf : + 1963983612558384 15 (47057.9) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000001110 #b0110111110100011101110010001100100100011110000110000)))
(assert (= r (fp #b0 #b10000001110 #b0110111110100011101110010001100100100011110000110000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
