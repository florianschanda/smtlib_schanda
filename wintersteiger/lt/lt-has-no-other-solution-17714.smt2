(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.52061197595296793139141300343908369541168212890625p-467 {- 2344627900906404 -467 (-3.99034e-141)}
; Y = 1.269572319702028995180853598867543041706085205078125p-843 {+ 1214045798559458 -843 (2.16457e-254)}
; -1.52061197595296793139141300343908369541168212890625p-467 < 1.269572319702028995180853598867543041706085205078125p-843 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101100 #b1000010101000110110100111001001010011111101110100100)))
(assert (= y (fp #b0 #b00010110100 #b0100010100000010101100010000100100000110111011100010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
