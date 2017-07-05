(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.22265207898238248418465445865876972675323486328125p860 {+ 1002735819938324 860 (9.39938e+258)}
; Y = -1.20346863795899583493564932723529636859893798828125p-278 {- 916341282093716 -278 (-2.47797e-084)}
; 1.22265207898238248418465445865876972675323486328125p860 > -1.20346863795899583493564932723529636859893798828125p-278 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101011011 #b0011100011111111101110100000010110011101101000010100)))
(assert (= y (fp #b1 #b01011101001 #b0011010000010110100001010100100111001011101010010100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
