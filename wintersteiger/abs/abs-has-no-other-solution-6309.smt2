(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3586944153000393153973845983273349702358245849609375p732 {- 1615416035085135 732 (-3.06958e+220)}
; -1.3586944153000393153973845983273349702358245849609375p732 | == 1.3586944153000393153973845983273349702358245849609375p732
; [HW: 1.3586944153000393153973845983273349702358245849609375p732] 

; mpf : + 1615416035085135 732
; mpfd: + 1615416035085135 732 (3.06958e+220) class: Pos. norm. non-zero
; hwf : + 1615416035085135 732 (3.06958e+220) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011011011 #b0101101111010011011001011010111011111000101101001111)))
(assert (= r (fp #b0 #b11011011011 #b0101101111010011011001011010111011111000101101001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
