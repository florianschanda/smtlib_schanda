(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.893061872739309148272468519280664622783660888671875p-374 {+ 4021993117287550 -374 (4.91979e-113)}
; 1.893061872739309148272468519280664622783660888671875p-374 | == 1.893061872739309148272468519280664622783660888671875p-374
; [HW: 1.893061872739309148272468519280664622783660888671875p-374] 

; mpf : + 4021993117287550 -374
; mpfd: + 4021993117287550 -374 (4.91979e-113) class: Pos. norm. non-zero
; hwf : + 4021993117287550 -374 (4.91979e-113) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010001001 #b1110010010011111101100111111000010111000010001111110)))
(assert (= r (fp #b0 #b01010001001 #b1110010010011111101100111111000010111000010001111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
