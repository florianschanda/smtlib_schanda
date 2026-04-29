(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.068905734647739080855899374000728130340576171875p-622 {- 310323840883248 -622 (-6.14161e-188)}
; -oo m -1.068905734647739080855899374000728130340576171875p-622 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b00110010001 #b0001000110100011110011100110010011010001101000110000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
