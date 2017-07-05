(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2926901583244447824228018362191505730152130126953125p623 {+ 1318159287964981 623 (4.49968e+187)}
; Y = -1.0125021845547415022537052209372632205486297607421875p988 {- 56304833702051 988 (-2.64869e+297)}
; 1.2926901583244447824228018362191505730152130126953125p623 < -1.0125021845547415022537052209372632205486297607421875p988 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101110 #b0100101011101101101111100000000111011101010100110101)))
(assert (= y (fp #b1 #b11111011011 #b0000001100110011010101111101100111001010100010100011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
