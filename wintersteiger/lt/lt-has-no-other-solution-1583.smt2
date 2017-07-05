(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9229506200332640020178587292321026325225830078125p615 {+ 4156600068463176 615 (2.61466e+185)}
; Y = 1.34756190893162486332812477485276758670806884765625p-784 {+ 1565279683552644 -784 (1.32444e-236)}
; 1.9229506200332640020178587292321026325225830078125p615 < 1.34756190893162486332812477485276758670806884765625p-784 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100110 #b1110110001000110011111011110100011011101101001001000)))
(assert (= y (fp #b0 #b00011101111 #b0101100011111001110100010011100000110010010110000100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
