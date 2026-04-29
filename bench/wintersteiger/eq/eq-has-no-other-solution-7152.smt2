(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.14553183549934800566916237585246562957763671875p-828 {- 655417120125408 -828 (-6.39986e-250)}
; Y = -1.9103076635642237679491017843247391283512115478515625p578 {- 4099661254420345 578 (-1.88991e+174)}
; -1.14553183549934800566916237585246562957763671875p-828 = -1.9103076635642237679491017843247391283512115478515625p578 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011000011 #b0010010101000001100100110000100111111111000111100000)))
(assert (= y (fp #b1 #b11001000001 #b1110100100001001111011000100110001001110011101111001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
