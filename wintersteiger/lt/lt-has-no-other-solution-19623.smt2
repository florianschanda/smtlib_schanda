(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.11136101350288907241292690741829574108123779296875p393 {- 501525418915212 393 (-2.24204e+118)}
; Y = 1.6562926404176956385327912357752211391925811767578125p362 {+ 2955679290831133 362 (1.55595e+109)}
; -1.11136101350288907241292690741829574108123779296875p393 < 1.6562926404176956385327912357752211391925811767578125p362 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001000 #b0001110010000010001001111100011100001011010110001100)))
(assert (= y (fp #b0 #b10101101001 #b1010100000000010110010110110001100110011000100011101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
