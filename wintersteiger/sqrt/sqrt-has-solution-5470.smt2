(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.315656389466392628406765652471221983432769775390625p174 {+ 1421589997977962 174 (3.15037e+052)}
; 1.315656389466392628406765652471221983432769775390625p174 S == 1.147020657820247091507326331338845193386077880859375p87
; [HW: 1.147020657820247091507326331338845193386077880859375p87] 

; mpf : + 662122179775030 87
; mpfd: + 662122179775030 87 (1.77493e+026) class: Pos. norm. non-zero
; hwf : + 662122179775030 87 (1.77493e+026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010101101 #b0101000011001110110110110110110110001000000101101010)))
(assert (= r (fp #b0 #b10001010110 #b0010010110100011001001010101010100101100101000110110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
