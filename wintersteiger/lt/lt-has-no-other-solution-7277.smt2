(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.49780655419604702416336294845677912235260009765625p182 {+ 2241921411979908 182 (9.18153e+054)}
; Y = 1.4223040146802083949495454362477175891399383544921875p132 {+ 1901888203150851 132 (7.74376e+039)}
; 1.49780655419604702416336294845677912235260009765625p182 < 1.4223040146802083949495454362477175891399383544921875p132 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010110101 #b0111111101110000010000000001011000000001101010000100)))
(assert (= y (fp #b0 #b10010000011 #b0110110000011100000111011010110000000101011000000011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
