(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.839824917248105595746210383367724716663360595703125p96 {+ 3782235184375026 96 (1.45766e+029)}
; Y = 1.602259910412801691137474335846491158008575439453125p-673 {+ 2712337508115282 -673 (4.08833e-203)}
; 1.839824917248105595746210383367724716663360595703125p96 > 1.602259910412801691137474335846491158008575439453125p-673 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001011111 #b1101011011111110110001000000100111110010010011110010)))
(assert (= y (fp #b0 #b00101011110 #b1001101000101101101101001001101011101010001101010010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
