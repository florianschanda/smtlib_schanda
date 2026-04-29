(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3355015425621659108657013348420150578022003173828125p-139 {- 1510964622065197 -139 (-1.91635e-042)}
; Y = 1.3980107328562727531107157119549810886383056640625p-559 {+ 1792480988180968 -559 (7.40872e-169)}
; -1.3355015425621659108657013348420150578022003173828125p-139 < 1.3980107328562727531107157119549810886383056640625p-559 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110100 #b0101010111100011011011011101100100001111111000101101)))
(assert (= y (fp #b0 #b00111010000 #b0110010111100100000010000000100100010011000111101000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
