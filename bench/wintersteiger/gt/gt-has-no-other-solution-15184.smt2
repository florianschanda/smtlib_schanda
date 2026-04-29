(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.151147909465905616599457061965949833393096923828125p785 {- 680709668748482 785 (-2.34249e+236)}
; Y = 1.6377805725388980828682861101697199046611785888671875p121 {+ 2872308348830323 121 (4.35397e+036)}
; -1.151147909465905616599457061965949833393096923828125p785 > 1.6377805725388980828682861101697199046611785888671875p121 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100010000 #b0010011010110001101000010010000000000011110011000010)))
(assert (= y (fp #b0 #b10001111000 #b1010001101000101100101100110110100010100001001110011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
