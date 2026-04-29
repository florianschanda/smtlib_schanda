(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2989440853075231441238202023669146001338958740234375p151 {- 1346324471195575 151 (-3.70783e+045)}
; Y = -1.4251878158002406760118674355908297002315521240234375p433 {- 1914875688800439 433 (-3.16126e+130)}
; -1.2989440853075231441238202023669146001338958740234375p151 > -1.4251878158002406760118674355908297002315521240234375p433 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010010110 #b0100110010000111100110010111110110111010011110110111)))
(assert (= y (fp #b1 #b10110110000 #b0110110011011001000110111101001110000101000010110111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
