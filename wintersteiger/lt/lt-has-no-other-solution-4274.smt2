(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.858253318083237015656550283893011510372161865234375p39 {- 3865229323509158 39 (-1.02159e+012)}
; Y = -1.171481145311400684505542812985368072986602783203125p-565 {- 772282422125490 -565 (-9.70036e-171)}
; -1.858253318083237015656550283893011510372161865234375p39 < -1.171481145311400684505542812985368072986602783203125p-565 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000100110 #b1101101110110110011111010100110011011001110110100110)))
(assert (= y (fp #b1 #b00111001010 #b0010101111100110001100000011011011111110001110110010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
