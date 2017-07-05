(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2603775501834615369034509058110415935516357421875p-756 {+ 1172636237981880 -756 (3.32525e-228)}
; Y = -1.3884854069118148789385713826050050556659698486328125p121 {- 1749582733806925 121 (-3.69123e+036)}
; 1.2603775501834615369034509058110415935516357421875p-756 > -1.3884854069118148789385713826050050556659698486328125p121 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100001011 #b0100001010101000000110100110011010100110100010111000)))
(assert (= y (fp #b1 #b10001111000 #b0110001101110011110001111001010110101000110101001101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
