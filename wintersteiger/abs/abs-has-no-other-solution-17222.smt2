(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.58297777946099760271181366988457739353179931640625p998 {+ 2625498510345828 998 (4.24044e+300)}
; 1.58297777946099760271181366988457739353179931640625p998 | == 1.58297777946099760271181366988457739353179931640625p998
; [HW: 1.58297777946099760271181366988457739353179931640625p998] 

; mpf : + 2625498510345828 998
; mpfd: + 2625498510345828 998 (4.24044e+300) class: Pos. norm. non-zero
; hwf : + 2625498510345828 998 (4.24044e+300) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111100101 #b1001010100111110000010000010000100010100011001100100)))
(assert (= r (fp #b0 #b11111100101 #b1001010100111110000010000010000100010100011001100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
