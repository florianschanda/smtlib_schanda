(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4680092063214942310622745935688726603984832763671875p485 {+ 2107726087195443 485 (1.46648e+146)}
; 1.4680092063214942310622745935688726603984832763671875p485 | == 1.4680092063214942310622745935688726603984832763671875p485
; [HW: 1.4680092063214942310622745935688726603984832763671875p485] 

; mpf : + 2107726087195443 485
; mpfd: + 2107726087195443 485 (1.46648e+146) class: Pos. norm. non-zero
; hwf : + 2107726087195443 485 (1.46648e+146) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100100 #b0111011111001111011100111000101101100000101100110011)))
(assert (= r (fp #b0 #b10111100100 #b0111011111001111011100111000101101100000101100110011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
