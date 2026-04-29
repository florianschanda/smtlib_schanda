(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.071084682710885971346215228550136089324951171875p192 {- 320136950568496 192 (-6.72331e+057)}
; Y = 1.9300339639943417946454928824095986783504486083984375p841 {+ 4188500613686823 841 (2.83003e+253)}
; -1.071084682710885971346215228550136089324951171875p192 > 1.9300339639943417946454928824095986783504486083984375p841 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010111111 #b0001001000110010100110110001001101111101011000110000)))
(assert (= y (fp #b0 #b11101001000 #b1110111000010110101101001011001110000110011000100111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
