(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7968241130089672719094551212037913501262664794921875p792 {+ 3588576778427011 792 (4.68018e+238)}
; 1.7968241130089672719094551212037913501262664794921875p792 S == 1.3404566807655393656517617273493669927120208740234375p396
; [HW: 1.3404566807655393656517617273493669927120208740234375p396] 

; mpf : + 1533280580631479 396
; mpfd: + 1533280580631479 396 (2.16337e+119) class: Pos. norm. non-zero
; hwf : + 1533280580631479 396 (2.16337e+119) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100010111 #b1100101111111100101010100100001000001001101010000011)))
(assert (= r (fp #b0 #b10110001011 #b0101011100101000001010110100010110010111101110110111)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
