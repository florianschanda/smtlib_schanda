(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6009424450003002515785510695422999560832977294921875p504 {+ 2706404171374467 504 (8.38482e+151)}
; Y = 1.1874285614003221578371949362917803227901458740234375p174 {+ 844103199281079 174 (2.84333e+052)}
; 1.6009424450003002515785510695422999560832977294921875p504 = 1.1874285614003221578371949362917803227901458740234375p174 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111110111 #b1001100111010111010111010011010000001101111110000011)))
(assert (= y (fp #b0 #b10010101101 #b0010111111111011010100010111010110001100111110110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
