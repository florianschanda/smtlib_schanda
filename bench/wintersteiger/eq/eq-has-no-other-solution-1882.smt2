(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3979259693758476768010723390034399926662445068359375p338 {+ 1792099247402111 338 (7.82749e+101)}
; Y = 1.28218532661368822545000512036494910717010498046875p908 {+ 1270849731786828 908 (2.77451e+273)}
; 1.3979259693758476768010723390034399926662445068359375p338 = 1.28218532661368822545000512036494910717010498046875p908 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101010001 #b0110010111011110011110011111000010110010110001111111)))
(assert (= y (fp #b0 #b11110001011 #b0100100000111101010011000010110100110111100001001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
