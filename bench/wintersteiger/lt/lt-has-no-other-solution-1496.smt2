(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9311862592708894936777141992934048175811767578125p-88 {- 4193690090264904 -88 (-6.24e-027)}
; Y = -1.787510484660184584271291896584443747997283935546875p-900 {- 3546631925265966 -900 (-2.11472e-271)}
; -1.9311862592708894936777141992934048175811767578125p-88 < -1.787510484660184584271291896584443747997283935546875p-900 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110100111 #b1110111001100010001110010000001000001101100101001000)))
(assert (= y (fp #b1 #b00001111011 #b1100100110011010010010011000000011011111011000101110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
