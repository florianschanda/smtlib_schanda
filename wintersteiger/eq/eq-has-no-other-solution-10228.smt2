(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3833977257385090542385341905173845589160919189453125p127 {+ 1726669854770645 127 (2.35373e+038)}
; Y = 1.05569535732681440975966324913315474987030029296875p-382 {+ 250829590503308 -382 (1.07172e-115)}
; 1.3833977257385090542385341905173845589160919189453125p127 = 1.05569535732681440975966324913315474987030029296875p-382 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111110 #b0110001000100110010110100111010101101000010111010101)))
(assert (= y (fp #b0 #b01010000001 #b0000111001000010000011010000101001000001111110001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
