(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0616733376850671088931221675011329352855682373046875p-1010 {+ 277752020617163 -1010 (9.67599e-305)}
; Y = -1.3575241852627584204782351662288419902324676513671875p75 {- 1610145787525299 75 (-5.12858e+022)}
; 1.0616733376850671088931221675011329352855682373046875p-1010 < -1.3575241852627584204782351662288419902324676513671875p75 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000001101 #b0000111111001001110100101110100001100100011111001011)))
(assert (= y (fp #b1 #b10001001010 #b0101101110000110101101000111101100111011100010110011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
