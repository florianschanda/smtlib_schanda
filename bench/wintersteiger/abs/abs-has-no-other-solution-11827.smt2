(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2656283039625104702707858450594358146190643310546875p924 {- 1196283530744619 924 (-1.79483e+278)}
; -1.2656283039625104702707858450594358146190643310546875p924 | == 1.2656283039625104702707858450594358146190643310546875p924
; [HW: 1.2656283039625104702707858450594358146190643310546875p924] 

; mpf : + 1196283530744619 924
; mpfd: + 1196283530744619 924 (1.79483e+278) class: Pos. norm. non-zero
; hwf : + 1196283530744619 924 (1.79483e+278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110011011 #b0100010000000000001101110110111001101001001100101011)))
(assert (= r (fp #b0 #b11110011011 #b0100010000000000001101110110111001101001001100101011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
