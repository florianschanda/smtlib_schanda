(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.542594426830460552224622006178833544254302978515625p776 {- 2443628058486970 776 (-6.13096e+233)}
; Y = 1.3623889940688747035579808652983047068119049072265625p125 {+ 1632054938651753 125 (5.79496e+037)}
; -1.542594426830460552224622006178833544254302978515625p776 < 1.3623889940688747035579808652983047068119049072265625p125 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100000111 #b1000101011100111011101111110011000111010100010111010)))
(assert (= y (fp #b0 #b10001111100 #b0101110011000101100001100110110111110100110001101001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
