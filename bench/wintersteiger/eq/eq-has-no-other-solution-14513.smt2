(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0886726511163924424607785113039426505565643310546875p-153 {+ 399346118525739 -153 (9.53472e-047)}
; Y = 1.2465884195927354749500182151678018271923065185546875p624 {+ 1110535514591723 624 (8.67841e+187)}
; 1.0886726511163924424607785113039426505565643310546875p-153 = 1.2465884195927354749500182151678018271923065185546875p624 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101100110 #b0001011010110011010000000011100010011000001100101011)))
(assert (= y (fp #b0 #b11001101111 #b0011111100100000011010110010110110111001000111101011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
