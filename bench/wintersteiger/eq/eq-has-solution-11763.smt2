(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5415475237496021332361806344124488532543182373046875p46 {+ 2438913226162123 46 (1.08477e+014)}
; Y = -1.34218215602029378175075180479325354099273681640625p-316 {- 1541051430345828 -316 (-1.00539e-095)}
; 1.5415475237496021332361806344124488532543182373046875p46 = -1.34218215602029378175075180479325354099273681640625p-316 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000101101 #b1000101010100010110110111100011110111011111111001011)))
(assert (= y (fp #b1 #b01011000011 #b0101011110011001001111111111000101100001110001100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
