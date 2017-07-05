(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.546464597033712085050183304701931774616241455078125p-867 {+ 2461057755572194 -867 (1.57157e-261)}
; Y = 1.9564186350372703149247399778687395155429840087890625p-506 {+ 4307326608364049 -506 (9.33865e-153)}
; 1.546464597033712085050183304701931774616241455078125p-867 > 1.9564186350372703149247399778687395155429840087890625p-506 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010011100 #b1000101111100101000110101001010010101110011111100010)))
(assert (= y (fp #b0 #b01000000101 #b1111010011010111110110100000011011000101001000010001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
