(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.70472942122627646455157446325756609439849853515625p363 {+ 3173819158831684 363 (3.2029e+109)}
; 1.70472942122627646455157446325756609439849853515625p363 | == 1.70472942122627646455157446325756609439849853515625p363
; [HW: 1.70472942122627646455157446325756609439849853515625p363] 

; mpf : + 3173819158831684 363
; mpfd: + 3173819158831684 363 (3.2029e+109) class: Pos. norm. non-zero
; hwf : + 3173819158831684 363 (3.2029e+109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101101010 #b1011010001101001001001011011100010110010001001000100)))
(assert (= r (fp #b0 #b10101101010 #b1011010001101001001001011011100010110010001001000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
