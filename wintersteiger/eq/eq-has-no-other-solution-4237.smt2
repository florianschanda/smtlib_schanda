(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7495600876438228699072396921110339462757110595703125p-710 {- 3375718531404517 -710 (-3.24812e-214)}
; Y = 1.162152277145526824142507393844425678253173828125p618 {+ 730268934929872 618 (1.26416e+186)}
; -1.7495600876438228699072396921110339462757110595703125p-710 = 1.162152277145526824142507393844425678253173828125p618 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100111001 #b1011111111100011001010110111111011010001001011100101)))
(assert (= y (fp #b0 #b11001101001 #b0010100110000010110011111100011101001111110111010000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
